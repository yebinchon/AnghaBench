
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ RopCode; int Name; } ;
typedef TYPE_1__* PROPINFO ;
typedef int FILE ;


 int Output (int *,char*,unsigned int,...) ;
 scalar_t__ ROPCODE_GENERIC ;

__attribute__((used)) static void
PrintRoutineName(FILE *Out, unsigned Bpp, PROPINFO RopInfo)
{
    if (((void*)0) != RopInfo && ROPCODE_GENERIC != RopInfo->RopCode)
    {
        Output(Out, "DIB_%uBPP_BitBlt_%s", Bpp, RopInfo->Name);
    }
    else
    {
        Output(Out, "DIB_%uBPP_BitBlt_Generic", Bpp);
    }
}
