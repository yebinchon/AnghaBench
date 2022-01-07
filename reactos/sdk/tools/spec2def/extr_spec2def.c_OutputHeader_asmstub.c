
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ARCH_AMD64 ;
 scalar_t__ ARCH_ARM ;
 scalar_t__ ARCH_X86 ;
 int fprintf (int *,char*) ;
 scalar_t__ giArch ;

void
OutputHeader_asmstub(FILE *file, char *libname)
{
    fprintf(file, "; File generated automatically, do not edit! \n\n");

    if (giArch == ARCH_X86)
    {
        fprintf(file, ".586\n.model flat\n.code\n");
    }
    else if (giArch == ARCH_AMD64)
    {
        fprintf(file, ".code\n");
    }
    else if (giArch == ARCH_ARM)
    {
        fprintf(file, "    AREA |.text|,ALIGN=2,CODE,READONLY\n\n");
    }
}
