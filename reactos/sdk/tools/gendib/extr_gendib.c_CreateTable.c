
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FindRopInfo (unsigned int) ;
 int MARK (int *) ;
 int Output (int *,char*) ;
 int PrintRoutineName (int *,unsigned int,int ) ;

__attribute__((used)) static void
CreateTable(FILE *Out, unsigned Bpp)
{
    unsigned RopCode;

    MARK(Out);
    Output(Out, "\n");
    Output(Out, "static void (*PrimitivesTable[256])(PBLTINFO) =\n");
    Output(Out, "{\n");
    for (RopCode = 0; RopCode < 256; RopCode++)
    {
        PrintRoutineName(Out, Bpp, FindRopInfo(RopCode));
        if (RopCode < 255)
        {
            Output(Out, ",");
        }
        Output(Out, "\n");
    }
    Output(Out, "};\n");
}
