
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_normal_imports () ;
 int test_ordinal_imports () ;
 int xprintf (char*) ;

int main(int argc, char* argv[])
{
    xprintf("Normal import (kernel32!GetComputerNameA)\n");
    test_normal_imports();
    xprintf("\nOrdinal import (shlwapi!#23)\n");
    test_ordinal_imports();

    return 0;
}
