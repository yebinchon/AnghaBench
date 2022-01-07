
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Output (int *,char*) ;

__attribute__((used)) static void
CreateShiftTables(FILE *Out)
{
    Output(Out, "\n");
    Output(Out, "static unsigned Shift1Bpp[] =\n");
    Output(Out, "{\n");
    Output(Out, "0,\n");
    Output(Out, "24, 25, 26, 27, 28, 29, 30, 31, 16, 17, 18, 19, 20, 21, 22, 23,\n");
    Output(Out, "8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7\n");
    Output(Out, "};\n");
    Output(Out, "static unsigned Shift4Bpp[] =\n");
    Output(Out, "{\n");
    Output(Out, "0,\n");
    Output(Out, "24, 28, 16, 20, 8, 12, 0, 4\n");
    Output(Out, "};\n");
    Output(Out, "static unsigned Shift8Bpp[] =\n");
    Output(Out, "{\n");
    Output(Out, "0,\n");
    Output(Out, "24, 16, 8, 0\n");
    Output(Out, "};\n");
    Output(Out, "static unsigned Shift16Bpp[] =\n");
    Output(Out, "{\n");
    Output(Out, "0,\n");
    Output(Out, "16, 0\n");
    Output(Out, "};\n");
}
