
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t WORD ;
typedef int VOID ;
struct TYPE_2__ {size_t VideoPage; size_t ScreenColumns; int * CursorPosition; } ;
typedef size_t BYTE ;


 TYPE_1__* Bda ;
 int HIBYTE (size_t) ;
 int IOWriteB (int ,int ) ;
 int LOBYTE (size_t) ;
 int MAKEWORD (size_t,size_t) ;
 int VGA_CRTC_CURSOR_LOC_HIGH_REG ;
 int VGA_CRTC_CURSOR_LOC_LOW_REG ;
 int VGA_CRTC_DATA ;
 int VGA_CRTC_INDEX ;

__attribute__((used)) static VOID VidBiosSetCursorPosition(BYTE Row, BYTE Column, BYTE Page)
{

    Bda->CursorPosition[Page] = MAKEWORD(Column, Row);


    if (Page == Bda->VideoPage)
    {
        WORD Offset = Row * Bda->ScreenColumns + Column;


        IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_CURSOR_LOC_LOW_REG);
        IOWriteB(VGA_CRTC_DATA , LOBYTE(Offset));
        IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_CURSOR_LOC_HIGH_REG);
        IOWriteB(VGA_CRTC_DATA , HIBYTE(Offset));
    }
}
