
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {scalar_t__ imagesize; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (scalar_t__,scalar_t__,int,int *) ;
 TYPE_1__ ih ;
 int snprintf (char*,int,char*,char) ;
 scalar_t__ vaddr ;

__attribute__((used)) static void dump(char n)
{
    char buf[100];

    snprintf(buf, sizeof(buf), "a.dump%c", n);



    FILE *f2 = fopen(buf, "wb");
    fwrite(vaddr + 0x1000, ih.imagesize - 0x1000, 1, f2);
    fclose(f2);
}
