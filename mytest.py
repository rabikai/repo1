import rng
import socket

def test_index():
    assert rng.index() == "RNG running on " + socket.gethostname() + "\n"

def test_show_env():
    assert rng.show_env() == "This is the value of the env coucou" + "\n"

def test_myFunction():
    assert rng.myFunction(10, 2) == 5