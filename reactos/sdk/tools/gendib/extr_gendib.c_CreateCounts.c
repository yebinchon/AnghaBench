
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MARK (int *) ;
 int Output (int *,char*,...) ;

__attribute__((used)) static void
CreateCounts(FILE *Out, unsigned Bpp)
{
    MARK(Out);
    if (32 != Bpp)
    {
        if (8 < Bpp)
        {
            Output(Out, "LeftCount = ((ULONG_PTR) DestBase >> 1) & 0x01;\n");
        }
        else
        {
            Output(Out, "LeftCount = (ULONG_PTR) DestBase & 0x03;\n");
            Output(Out, "if ((ULONG)(BltInfo->DestRect.right - BltInfo->DestRect.left) < "
                   "LeftCount)\n");
            Output(Out, "{\n");
            Output(Out, "LeftCount = BltInfo->DestRect.right - "
                   "BltInfo->DestRect.left;\n");
            Output(Out, "}\n");
        }
        Output(Out, "CenterCount = (BltInfo->DestRect.right - BltInfo->DestRect.left -\n");
        Output(Out, "               LeftCount) / %u;\n", 32 / Bpp);
        Output(Out, "RightCount = (BltInfo->DestRect.right - BltInfo->DestRect.left -\n");
        Output(Out, "              LeftCount - %u * CenterCount);\n", 32 / Bpp);
    }
    else
    {
        Output(Out, "CenterCount = BltInfo->DestRect.right - BltInfo->DestRect.left;\n");
    }
}
