
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (unsigned char*,int,int,int *) ;

unsigned short readushort(FILE * f, int bigendian)
{
    unsigned char c1, c2;
    fread(&c1, 1, 1, f);
    fread(&c2, 1, 1, f);
    if (bigendian) {
        return (c1 << 8) + c2;
    } else {
        return (c2 << 8) + c1;
    }
}
