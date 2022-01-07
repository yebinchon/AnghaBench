
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINTN ;
typedef char CHAR16 ;


 scalar_t__ is_digit (char) ;

__attribute__((used)) static UINTN c_order(CHAR16 c) {
        if (c == '\0')
                return 0;
        if (is_digit(c))
                return 0;
        else if ((c >= 'a') && (c <= 'z'))
                return c;
        else
                return c + 0x10000;
}
