
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MARK (int *) ;
 int Output (int *,char*,...) ;

__attribute__((used)) static void
CreateBitBlt(FILE *Out, unsigned Bpp)
{
    MARK(Out);
    Output(Out, "\n");
    Output(Out, "BOOLEAN\n");
    Output(Out, "DIB_%uBPP_BitBlt(PBLTINFO BltInfo)\n", Bpp);
    Output(Out, "{\n");
    Output(Out, "PrimitivesTable[BltInfo->Rop4 & 0xff](BltInfo);\n");
    Output(Out, "\n");
    Output(Out, "return TRUE;\n");
    Output(Out, "}\n");
}
