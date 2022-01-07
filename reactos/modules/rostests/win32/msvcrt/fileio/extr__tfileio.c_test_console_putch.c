
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _putch (char) ;

__attribute__((used)) static int test_console_putch(void)
{
    int result = 0;

    _putch('1');
    _putch('@');
    _putch('3');
    _putch(':');
    _putch('\n');
    _putch('a');
    _putch('B');
    _putch('c');
    _putch(':');
    _putch('\n');
    return result;
}
