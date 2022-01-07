
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLAG_BOTTOMUP ;
 int MARK (int *) ;
 int Output (int *,char*,...) ;

__attribute__((used)) static void
CreateBase(FILE *Out, int Source, int Flags, unsigned Bpp)
{
    const char *What = (Source ? "Source" : "Dest");

    MARK(Out);
    Output(Out, "%sBase = (char *) BltInfo->%sSurface->pvScan0 +\n", What, What);
    if (0 == (Flags & FLAG_BOTTOMUP))
    {
        if (Source)
        {
            Output(Out, "             BltInfo->SourcePoint.y *\n");
        }
        else
        {
            Output(Out, "           BltInfo->DestRect.top *\n");
        }
    }
    else
    {
        if (Source)
        {
            Output(Out, "             (BltInfo->SourcePoint.y +\n");
            Output(Out, "              BltInfo->DestRect.bottom -\n");
            Output(Out, "              BltInfo->DestRect.top - 1) *\n");
        }
        else
        {
            Output(Out, "           (BltInfo->DestRect.bottom - 1) *\n");
        }
    }
    Output(Out, "           %sBltInfo->%sSurface->lDelta +\n",
           Source ? "  " : "", What);
    if (Source)
    {
        Output(Out, "             %sBltInfo->SourcePoint.x",
               16 < Bpp ? "" : "((");
    }
    else
    {
        Output(Out, "           BltInfo->DestRect.left");
    }
    if (Bpp < 8)
    {
        Output(Out, " / %u", 8 / Bpp);
    }
    else if (8 < Bpp)
    {
        Output(Out, " * %u", Bpp / 8);
    }
    if (Source && Bpp <= 16)
    {
        Output(Out, ") & ~ 0x3)");
    }
    Output(Out, ";\n", Bpp / 8);
    if (Source && Bpp <= 16)
    {
        Output(Out, "BaseSourcePixels = %u - (BltInfo->SourcePoint.x & 0x%x);\n",
               32 / Bpp, 32 / Bpp - 1);
    }
}
