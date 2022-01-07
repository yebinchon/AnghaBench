
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DPRINT1 (char*) ;

int
fseek(FILE *Stream, long Offset, int Origin)
{
    DPRINT1("Doubleplus ungood: freetype shouldn't fseek!\n");
    return -1;
}
