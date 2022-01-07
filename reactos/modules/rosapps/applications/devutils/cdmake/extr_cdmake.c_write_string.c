
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_byte (int ) ;

__attribute__((used)) static void write_string(char *s)
{
    while (*s != 0)
        write_byte(*s++);
}
