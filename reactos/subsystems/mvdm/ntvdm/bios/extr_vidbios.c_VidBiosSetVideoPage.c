
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VideoPage; int VideoPageOffset; int VideoPageSize; } ;
typedef int BYTE ;
typedef int BOOLEAN ;


 int BIOS_MAX_PAGES ;
 TYPE_1__* Bda ;
 int FALSE ;
 int HIBYTE (int) ;
 int IOWriteB (int ,int ) ;
 int LOBYTE (int) ;
 int TRUE ;
 int VGA_CRTC_DATA ;
 int VGA_CRTC_INDEX ;
 int VGA_CRTC_START_ADDR_HIGH_REG ;
 int VGA_CRTC_START_ADDR_LOW_REG ;
 int VidBiosGetCursorPosition (int*,int*,int) ;
 int VidBiosSetCursorPosition (int,int,int) ;

__attribute__((used)) static BOOLEAN VidBiosSetVideoPage(BYTE PageNumber)
{
    BYTE Row, Column;


    if (PageNumber >= BIOS_MAX_PAGES) return FALSE;


    if (PageNumber == Bda->VideoPage) return TRUE;


    Bda->VideoPage = PageNumber;
    Bda->VideoPageOffset = Bda->VideoPage * Bda->VideoPageSize;


    IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_LOW_REG);
    IOWriteB(VGA_CRTC_DATA , LOBYTE(Bda->VideoPageOffset));
    IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_HIGH_REG);
    IOWriteB(VGA_CRTC_DATA , HIBYTE(Bda->VideoPageOffset));





    VidBiosGetCursorPosition(&Row, &Column, PageNumber);
    VidBiosSetCursorPosition( Row, Column, PageNumber);

    return TRUE;
}
