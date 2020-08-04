from typing import TypeVar
from selenium.webdriver import Chrome
from selenium.webdriver.chrome.options import Options

Browser = TypeVar("Browser")


def init_browser(headless: bool = False) -> Browser:
    opts = Options()
    if headless:
        opts.set_headless()

    b = Chrome(options=opts)
    b.implicitly_wait(3)

    print("Initialized browser.")

    b.get("https://robinhood.com/login")

    return b


def login(b: Browser, username: str, password: str, code_type: bool = True) -> None:
    pass


def send_code(b: Browser, code: str) -> None:
    pass


def close_browser(b: Browser) -> None:
    b.close()
