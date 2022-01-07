
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int valid_number_character(char ch)
{
    char lower_ch;

    if ('0' <= ch && ch <= '9')
        return 1;
    if (ch == '-' || ch == '+' || ch == '.')
        return 1;


    lower_ch = ch | 0x20;
    if ('a' <= lower_ch && lower_ch <= 'y')
        return 1;

    return 0;
}
