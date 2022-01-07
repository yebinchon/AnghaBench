
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DPRINT1 (char*) ;

size_t
fread(void *Buffer, size_t Size, size_t Count, FILE *Stream)
{
    DPRINT1("Doubleplus ungood: freetype shouldn't fread!\n");
    return 0;
}
