
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int ,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int stderr ;

__attribute__((used)) static unsigned short readushort(FILE * f, int bigendian)
{
    unsigned char c1, c2;
    if (!fread(&c1, 1, 1, f)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0;
    }
    if (!fread(&c2, 1, 1, f)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0;
    }
    if (bigendian) {
        return (unsigned short)((c1 << 8) + c2);
    } else {
        return (unsigned short)((c2 << 8) + c1);
    }
}
