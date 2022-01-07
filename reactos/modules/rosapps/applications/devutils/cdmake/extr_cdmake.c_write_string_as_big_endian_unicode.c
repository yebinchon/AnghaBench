
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_big_endian_word (int ) ;

__attribute__((used)) static void write_string_as_big_endian_unicode(char *s)
{
    while (*s != 0)
    {
        write_big_endian_word(*s++);
    }
}
