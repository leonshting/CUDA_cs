__author__ = 'marusy'

from scipy.fftpack import fft, ifft, rfft
import numpy as np
import matplotlib.pyplot as plt


def f(x):
    return int(np.abs(10-x))
x = np.arange(0, 50, 0.1)
y = [f(X) for X in x]
plt.plot(x, y)

plt.show()

fftrans = fft(y, 128)
plt.hist(np.real(fftrans), 100, facecolor='blue')
plt.hist(np.imag(fftrans), 100, facecolor='red')
plt.show()
plt.plot(np.real(ifft(fftrans)))
plt.show()
