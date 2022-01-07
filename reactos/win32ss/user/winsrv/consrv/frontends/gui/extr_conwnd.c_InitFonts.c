
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_11__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_9__ {scalar_t__ FaceName; scalar_t__ FontWeight; TYPE_4__ FontSize; scalar_t__ FontFamily; } ;
struct TYPE_10__ {TYPE_2__ GuiInfo; int ** Font; int hWindow; int CharWidth; int CharHeight; TYPE_1__* Console; } ;
struct TYPE_8__ {int OutputCodePage; } ;
typedef TYPE_3__* PGUI_CONSOLE_DATA ;
typedef scalar_t__ LPWSTR ;
typedef int LONG ;
typedef int * HFONT ;
typedef int HDC ;
typedef TYPE_4__ COORD ;
typedef int BOOL ;


 int ARRAYSIZE (scalar_t__) ;
 int * CreateConsoleFontEx (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 void* CreateDerivedFont (int *,scalar_t__,int ,int ) ;
 int DPRINT1 (char*) ;
 int DeleteFonts (TYPE_3__*) ;
 int DeleteObject (int *) ;
 int FALSE ;
 size_t FONT_BOLD ;
 size_t FONT_NORMAL ;
 size_t FONT_UNDERLINE ;
 scalar_t__ FW_BOLD ;
 int GetDC (int ) ;
 int GetFontCellSize (int ,int *,int *,int *) ;
 int LF_FACESIZE ;
 int ReleaseDC (int ,int ) ;
 int StringCchCopyNW (scalar_t__,int ,scalar_t__,int ) ;
 int TRUE ;

BOOL
InitFonts(PGUI_CONSOLE_DATA GuiData,
          LPWSTR FaceName,
          ULONG FontFamily,
          COORD FontSize,
          ULONG FontWeight)
{
    HDC hDC;
    HFONT hFont;





    hFont = CreateConsoleFontEx((LONG)(ULONG)FontSize.Y,
                                (LONG)(ULONG)FontSize.X,
                                FaceName,
                                FontFamily,
                                FontWeight,
                                GuiData->Console->OutputCodePage);
    if (hFont == ((void*)0))
    {
        DPRINT1("InitFonts: CreateConsoleFontEx failed\n");
        return FALSE;
    }

    hDC = GetDC(GuiData->hWindow);
    if (!GetFontCellSize(hDC, hFont, &GuiData->CharHeight, &GuiData->CharWidth))
    {
        DPRINT1("InitFonts: GetFontCellSize failed\n");
        ReleaseDC(GuiData->hWindow, hDC);
        DeleteObject(hFont);
        return FALSE;
    }
    ReleaseDC(GuiData->hWindow, hDC);





    DeleteFonts(GuiData);
    GuiData->Font[FONT_NORMAL] = hFont;




    GuiData->Font[FONT_BOLD] =
        CreateDerivedFont(GuiData->Font[FONT_NORMAL],
                          FontWeight < FW_BOLD ? FW_BOLD : FontWeight,
                          FALSE,
                          FALSE);
    GuiData->Font[FONT_UNDERLINE] =
        CreateDerivedFont(GuiData->Font[FONT_NORMAL],
                          FontWeight,
                          TRUE,
                          FALSE);
    GuiData->Font[FONT_BOLD | FONT_UNDERLINE] =
        CreateDerivedFont(GuiData->Font[FONT_NORMAL],
                          FontWeight < FW_BOLD ? FW_BOLD : FontWeight,
                          TRUE,
                          FALSE);




    if (FaceName != GuiData->GuiInfo.FaceName)
    {
        StringCchCopyNW(GuiData->GuiInfo.FaceName, ARRAYSIZE(GuiData->GuiInfo.FaceName),
                        FaceName, LF_FACESIZE);
    }
    GuiData->GuiInfo.FontFamily = FontFamily;
    GuiData->GuiInfo.FontSize = FontSize;
    GuiData->GuiInfo.FontWeight = FontWeight;

    return TRUE;
}
