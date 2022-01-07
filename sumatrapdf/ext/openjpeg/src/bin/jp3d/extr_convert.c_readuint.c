
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (unsigned char*,int,int,int *) ;

unsigned int readuint(FILE * f, int bigendian)
{
    unsigned char c1, c2, c3, c4;
    fread(&c1, 1, 1, f);
    fread(&c2, 1, 1, f);
    fread(&c3, 1, 1, f);
    fread(&c4, 1, 1, f);
    if (bigendian) {
        return (c1 << 24) + (c2 << 16) + (c3 << 8) + c4;
    } else {
        return (c4 << 24) + (c3 << 16) + (c2 << 8) + c1;
    }
}
