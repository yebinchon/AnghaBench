
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT32 ;
typedef int * PUCHAR ;



VOID
LoadFont(
    PUCHAR Bitplane,
    PUCHAR FontBitfield)
{
    UINT32 i, j;

    for (i = 0; i < 256; i++)
    {
        for (j = 0; j < 8; j++)
        {
            *Bitplane = FontBitfield[i * 8 + j];
            Bitplane++;
        }


        for (j = 8; j < 32; j++)
        {
            *Bitplane = 0;
            Bitplane++;
        }
    }
}
