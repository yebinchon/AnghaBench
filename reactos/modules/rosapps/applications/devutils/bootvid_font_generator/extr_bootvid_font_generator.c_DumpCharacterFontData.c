
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int HEIGHT ;
 int fprintf (int ,char*,...) ;
 int stdout ;

__attribute__((used)) static void DumpCharacterFontData(DWORD BmpBits[])
{
    static int iBegin = 0;
    int i;

    fprintf(stdout, "    ");

    for (i = 0; i < HEIGHT; i++)
        fprintf(stdout, "0x%02lX, ", BmpBits[i]);

    fprintf(stdout, " // %d\n", iBegin);
    iBegin += HEIGHT;
}
