
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ UsesPattern; scalar_t__ UsesSource; } ;
typedef TYPE_1__* PROPINFO ;
typedef int FILE ;


 int CreateGetSource (int *,unsigned int,TYPE_1__*,int,unsigned int,int ) ;
 int CreateOperation (int *,unsigned int,TYPE_1__*,unsigned int,int) ;
 int FLAG_FORCENOUSESSOURCE ;
 int FLAG_PATTERNSURFACE ;
 int MARK (int *) ;
 int Output (int *,char*,...) ;

__attribute__((used)) static void
CreateSetSinglePixel(FILE *Out, unsigned Bpp, PROPINFO RopInfo, int Flags,
                     unsigned SourceBpp)
{
    if (RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE))
    {
        CreateGetSource(Out, Bpp, RopInfo, Flags, SourceBpp, 0);
        MARK(Out);
    }
    if (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE))
    {
        Output(Out, "Pattern = DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY);\n");
        Output(Out, "if (BltInfo->PatternSurface->sizlBitmap.cx <= ++PatternX)\n");
        Output(Out, "{\n");
        Output(Out, "PatternX -= BltInfo->PatternSurface->sizlBitmap.cx;\n");
        Output(Out, "}\n");
    }
    if ((RopInfo->UsesSource && 0 == (Flags & FLAG_FORCENOUSESSOURCE) &&
            Bpp != SourceBpp) ||
            (RopInfo->UsesPattern && 0 != (Flags & FLAG_PATTERNSURFACE)))
    {
        Output(Out, "\n");
    }
    CreateOperation(Out, Bpp, RopInfo, SourceBpp, 16);
    Output(Out, ";\n");
    MARK(Out);
    Output(Out, "\n");
    Output(Out, "DestPtr = (PULONG)((char *) DestPtr + %u);\n", Bpp / 8);
}
