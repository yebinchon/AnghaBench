
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_big_endian_word (char) ;
 int write_byte (char) ;

__attribute__((used)) static void write_bytecounted_string_as_big_endian_unicode(unsigned bytecount, char *s, char padding)
{
    unsigned wordcount = bytecount / 2;

    while (*s != 0 && wordcount != 0)
    {
        write_big_endian_word(*s++);
        wordcount--;
    }
    while (wordcount != 0)
    {
        write_big_endian_word(padding);
        wordcount--;
    }

    if (bytecount % 2 != 0)
        write_byte(padding);
}
