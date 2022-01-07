
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_byte (char) ;

__attribute__((used)) static void write_bytecounted_string(unsigned bytecount, char *s, char padding)
{
    while (*s != 0 && bytecount != 0)
    {
        write_byte(*s++);
        bytecount--;
    }
    while (bytecount != 0)
    {
        write_byte(padding);
        bytecount--;
    }
}
