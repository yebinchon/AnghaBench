
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (unsigned char*,int,int,int *) ;

unsigned char readuchar(FILE * f)
{
    unsigned char c1;
    fread(&c1, 1, 1, f);
    return c1;
}
