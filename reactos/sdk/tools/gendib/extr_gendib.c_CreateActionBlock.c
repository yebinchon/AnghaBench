
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ RopCode; scalar_t__ UsesSource; } ;
typedef int SourceBpp ;
typedef TYPE_1__* PROPINFO ;
typedef int FILE ;


 int CreateBitCase (int *,unsigned int,TYPE_1__*,int,unsigned int) ;
 int FLAG_BOTTOMUP ;
 int FLAG_FORCENOUSESSOURCE ;
 int FLAG_TRIVIALXLATE ;
 int MARK (int *) ;
 int Output (int *,char*,...) ;
 scalar_t__ ROPCODE_GENERIC ;

__attribute__((used)) static void
CreateActionBlock(FILE *Out, unsigned Bpp, PROPINFO RopInfo,
                  int Flags)
{
    static unsigned SourceBpp[ ] =
    { 1, 4, 8, 16, 24, 32 };
    unsigned BppIndex;

    MARK(Out);
    if (RopInfo->UsesSource)
    {
        if (ROPCODE_GENERIC == RopInfo->RopCode)
        {
            Output(Out, "if (UsesSource)\n");
            Output(Out, "{\n");
        }
        Output(Out, "switch (BltInfo->SourceSurface->iBitmapFormat)\n");
        Output(Out, "{\n");
        for (BppIndex = 0;
                BppIndex < sizeof(SourceBpp) / sizeof(unsigned);
                BppIndex++)
        {
            Output(Out, "case BMF_%uBPP:\n", SourceBpp[BppIndex]);
            Output(Out, "{\n");
            if (Bpp == SourceBpp[BppIndex])
            {
                Output(Out, "if (NULL == BltInfo->XlateSourceToDest ||\n");
                Output(Out, "    0 != (BltInfo->XlateSourceToDest->flXlate & XO_TRIVIAL))\n");
                Output(Out, "{\n");
                Output(Out, "if (BltInfo->DestRect.top < BltInfo->SourcePoint.y)\n");
                Output(Out, "{\n");
                CreateBitCase(Out, Bpp, RopInfo,
                              Flags | FLAG_TRIVIALXLATE,
                              SourceBpp[BppIndex]);
                MARK(Out);
                Output(Out, "}\n");
                Output(Out, "else\n");
                Output(Out, "{\n");
                CreateBitCase(Out, Bpp, RopInfo,
                              Flags | FLAG_BOTTOMUP | FLAG_TRIVIALXLATE,
                              SourceBpp[BppIndex]);
                MARK(Out);
                Output(Out, "}\n");
                Output(Out, "}\n");
                Output(Out, "else\n");
                Output(Out, "{\n");
                Output(Out, "if (BltInfo->DestRect.top < BltInfo->SourcePoint.y)\n");
                Output(Out, "{\n");
                CreateBitCase(Out, Bpp, RopInfo, Flags, SourceBpp[BppIndex]);
                MARK(Out);
                Output(Out, "}\n");
                Output(Out, "else\n");
                Output(Out, "{\n");
                CreateBitCase(Out, Bpp, RopInfo,
                              Flags | FLAG_BOTTOMUP,
                              SourceBpp[BppIndex]);
                MARK(Out);
                Output(Out, "}\n");
                Output(Out, "}\n");
            }
            else
            {
                CreateBitCase(Out, Bpp, RopInfo, Flags,
                              SourceBpp[BppIndex]);
                MARK(Out);
            }
            Output(Out, "break;\n");
            Output(Out, "}\n");
        }
        Output(Out, "}\n");
        if (ROPCODE_GENERIC == RopInfo->RopCode)
        {
            Output(Out, "}\n");
            Output(Out, "else\n");
            Output(Out, "{\n");
            CreateBitCase(Out, Bpp, RopInfo, Flags | FLAG_FORCENOUSESSOURCE, 0);
            MARK(Out);
            Output(Out, "}\n");
        }
    }
    else
    {
        CreateBitCase(Out, Bpp, RopInfo, Flags, 0);
    }
}
