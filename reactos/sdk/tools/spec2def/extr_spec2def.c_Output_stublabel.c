
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ARCH_ARM ;
 int fprintf (int *,char*,char*,char*) ;
 scalar_t__ giArch ;

void
Output_stublabel(FILE *fileDest, char* pszSymbolName)
{
    if (giArch == ARCH_ARM)
    {
        fprintf(fileDest,
                "\tEXPORT |%s| [FUNC]\n|%s|\n",
                pszSymbolName,
                pszSymbolName);
    }
    else
    {
        fprintf(fileDest,
                "PUBLIC %s\n%s: nop\n",
                pszSymbolName,
                pszSymbolName);
    }
}
