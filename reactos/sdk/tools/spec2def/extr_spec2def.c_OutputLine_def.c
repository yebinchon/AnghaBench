
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; int len; } ;
struct TYPE_7__ {int uFlags; int nOrdinal; scalar_t__ nCallingConvention; TYPE_1__ strName; } ;
typedef int FILE ;
typedef TYPE_2__ EXPORT ;


 scalar_t__ CC_EXTERN ;
 int DbgPrint (char*,int ,int ) ;
 int FL_NONAME ;
 int FL_ORDINAL ;
 int FL_PRIVATE ;
 int OutputLine_def_GCC (int *,TYPE_2__*) ;
 int OutputLine_def_MS (int *,TYPE_2__*) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ gbMSComp ;

int
OutputLine_def(FILE *fileDest, EXPORT *pexp)
{
    DbgPrint("OutputLine_def: '%.*s'...\n", pexp->strName.len, pexp->strName.buf);
    fprintf(fileDest, " ");

    if (gbMSComp)
        OutputLine_def_MS(fileDest, pexp);
    else
        OutputLine_def_GCC(fileDest, pexp);

    if (pexp->uFlags & FL_ORDINAL)
    {
        fprintf(fileDest, " @%d", pexp->nOrdinal);
    }

    if (pexp->uFlags & FL_NONAME)
    {
        fprintf(fileDest, " NONAME");
    }


    if (pexp->uFlags & FL_PRIVATE)
    {
        fprintf(fileDest, " PRIVATE");
    }
    else if (pexp->nCallingConvention == CC_EXTERN)
    {
        fprintf(fileDest, " DATA");
    }

    fprintf(fileDest, "\n");

    return 1;
}
