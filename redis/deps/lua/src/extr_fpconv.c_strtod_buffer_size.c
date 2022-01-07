
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ valid_number_character (char const) ;

__attribute__((used)) static int strtod_buffer_size(const char *s)
{
    const char *p = s;

    while (valid_number_character(*p))
        p++;

    return p - s;
}
