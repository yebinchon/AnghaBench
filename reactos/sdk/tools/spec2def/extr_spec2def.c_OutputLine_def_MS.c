
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* buf; char* len; } ;
struct TYPE_5__ {scalar_t__ nCallingConvention; int uFlags; int nNumber; TYPE_3__ strName; TYPE_3__ strTarget; } ;
typedef int FILE ;
typedef TYPE_1__ EXPORT ;


 scalar_t__ ARCH_X86 ;
 scalar_t__ CC_FASTCALL ;
 scalar_t__ CC_STDCALL ;
 scalar_t__ CC_STUB ;
 int FL_NORELAY ;
 int FL_STUB ;
 int PrintName (int *,TYPE_1__*,TYPE_3__*,int) ;
 scalar_t__ ScanToken (char*,char) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ gbImportLib ;
 scalar_t__ gbTracing ;
 scalar_t__ giArch ;

void
OutputLine_def_MS(FILE *fileDest, EXPORT *pexp)
{
    PrintName(fileDest, pexp, &pexp->strName, 0);

    if (gbImportLib)
    {

        fprintf(fileDest, "=_stub_");
        PrintName(fileDest, pexp, &pexp->strName, 0);
    }
    else if (pexp->strTarget.buf)
    {
        if (pexp->strName.buf[0] == '?')
        {


        }
        else
        {
            fprintf(fileDest, "=");


            if ((giArch == ARCH_X86) && ScanToken(pexp->strName.buf, '@') &&
                !ScanToken(pexp->strTarget.buf, '@') &&
                ((pexp->nCallingConvention == CC_STDCALL) ||
                (pexp->nCallingConvention == CC_FASTCALL)) )
            {
                PrintName(fileDest, pexp, &pexp->strTarget, 1);
            }
            else
            {

                fprintf(fileDest, "%.*s", pexp->strTarget.len, pexp->strTarget.buf);
            }
        }
    }
    else if (((pexp->uFlags & FL_STUB) || (pexp->nCallingConvention == CC_STUB)) &&
             (pexp->strName.buf[0] == '?'))
    {

        fprintf(fileDest, "=stub_function%d", pexp->nNumber);
    }
    else if (gbTracing && ((pexp->uFlags & FL_NORELAY) == 0) && (pexp->nCallingConvention == CC_STDCALL) &&
            (pexp->strName.buf[0] != '?'))
    {

        fprintf(fileDest, "=$relaytrace$%.*s", pexp->strName.len, pexp->strName.buf);
    }
}
