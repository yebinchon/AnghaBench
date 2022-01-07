
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void
OutputHeader_def(FILE *file, char *libname)
{
    fprintf(file,
            "; File generated automatically, do not edit!\n\n"
            "NAME %s\n\n"
            "EXPORTS\n",
            libname);
}
