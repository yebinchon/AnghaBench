
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOLOWER_ASC (int) ;
 scalar_t__ VIM_ISDIGIT (int) ;

__attribute__((used)) static int
hex_digit(int c)
{
    if (VIM_ISDIGIT(c))
 return c - '0';
    c = TOLOWER_ASC(c);
    if (c >= 'a' && c <= 'f')
 return c - 'a' + 10;
    return -1000;
}
