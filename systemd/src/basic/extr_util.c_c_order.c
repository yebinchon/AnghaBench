
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_digit (int) ;

__attribute__((used)) static int c_order(int c) {
        if (c == 0 || is_digit(c))
                return 0;

        if ((c >= 'a') && (c <= 'z'))
                return c;

        return c + 0x10000;
}
