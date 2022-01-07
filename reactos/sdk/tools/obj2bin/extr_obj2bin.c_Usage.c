
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static
void
Usage(void)
{
    printf("Converts a coff object file into a raw binary file.\n"
           "Syntax: obj2bin <source file> <dest file> <base address>\n");
}
