
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOGPALETTE ;
typedef int BOOL ;


 int CreatePalette (int *) ;
 int FALSE ;
 int InitPerBitDepth (int,int,int,int *,int *,int *,int *) ;
 int TRUE ;
 int ghbmp1 ;
 int ghbmp16 ;
 int ghbmp24 ;
 int ghbmp32 ;
 int ghbmp4 ;
 int ghbmp8 ;
 int ghbmpDIB1 ;
 int ghbmpDIB16 ;
 int ghbmpDIB24 ;
 int ghbmpDIB32 ;
 int ghbmpDIB4 ;
 int ghbmpDIB8 ;
 int ghdcDIB1 ;
 int ghdcDIB16 ;
 int ghdcDIB24 ;
 int ghdcDIB32 ;
 int ghdcDIB4 ;
 int ghdcDIB8 ;
 int ghpal ;
 int gpDIB32 ;
 int gpal ;
 int gpvDIB1 ;
 int gpvDIB16 ;
 int gpvDIB24 ;
 int gpvDIB32 ;
 int gpvDIB4 ;
 int gpvDIB8 ;
 int printf (char*) ;

BOOL InitStuff(void)
{


    ghpal = CreatePalette((LOGPALETTE*)&gpal);
    if (!ghpal)
    {
        printf("failed to create a palette \n");
        return FALSE;
    }

    if (!InitPerBitDepth(1, 9, 9, &ghbmp1, &ghdcDIB1, &ghbmpDIB1, &gpvDIB1) ||
        !InitPerBitDepth(4, 5, 5, &ghbmp4, &ghdcDIB4, &ghbmpDIB4, &gpvDIB4) ||
        !InitPerBitDepth(8, 5, 5, &ghbmp8, &ghdcDIB8, &ghbmpDIB8, &gpvDIB8) ||
        !InitPerBitDepth(16, 8, 8, &ghbmp16, &ghdcDIB16, &ghbmpDIB16, &gpvDIB16) ||
        !InitPerBitDepth(24, 8, 8, &ghbmp24, &ghdcDIB24, &ghbmpDIB24, &gpvDIB24) ||
        !InitPerBitDepth(32, 8, 8, &ghbmp32, &ghdcDIB32, &ghbmpDIB32, &gpvDIB32))
    {
        printf("failed to create objects \n");
        return FALSE;
    }

    gpDIB32 = gpvDIB32;

    return TRUE;
}
