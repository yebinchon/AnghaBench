#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_11__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_9__ {scalar_t__ FaceName; scalar_t__ FontWeight; TYPE_4__ FontSize; scalar_t__ FontFamily; } ;
struct TYPE_10__ {TYPE_2__ GuiInfo; int /*<<< orphan*/ ** Font; int /*<<< orphan*/  hWindow; int /*<<< orphan*/  CharWidth; int /*<<< orphan*/  CharHeight; TYPE_1__* Console; } ;
struct TYPE_8__ {int /*<<< orphan*/  OutputCodePage; } ;
typedef  TYPE_3__* PGUI_CONSOLE_DATA ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ COORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 size_t FONT_BOLD ; 
 size_t FONT_NORMAL ; 
 size_t FONT_UNDERLINE ; 
 scalar_t__ FW_BOLD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LF_FACESIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC10(PGUI_CONSOLE_DATA GuiData,
          LPWSTR FaceName, // Points to a WCHAR array of LF_FACESIZE elements.
          ULONG  FontFamily,
          COORD  FontSize,
          ULONG  FontWeight)
{
    HDC hDC;
    HFONT hFont;

    /*
     * Initialize a new NORMAL font and get its character cell size.
     */
    /* NOTE: FontSize is always in cell height/width units (pixels) */
    hFont = FUNC1((LONG)(ULONG)FontSize.Y,
                                (LONG)(ULONG)FontSize.X,
                                FaceName,
                                FontFamily,
                                FontWeight,
                                GuiData->Console->OutputCodePage);
    if (hFont == NULL)
    {
        FUNC3("InitFonts: CreateConsoleFontEx failed\n");
        return FALSE;
    }

    hDC = FUNC6(GuiData->hWindow);
    if (!FUNC7(hDC, hFont, &GuiData->CharHeight, &GuiData->CharWidth))
    {
        FUNC3("InitFonts: GetFontCellSize failed\n");
        FUNC8(GuiData->hWindow, hDC);
        FUNC5(hFont);
        return FALSE;
    }
    FUNC8(GuiData->hWindow, hDC);

    /*
     * Initialization succeeded.
     */
    // Delete all the old fonts first.
    FUNC4(GuiData);
    GuiData->Font[FONT_NORMAL] = hFont;

    /*
     * Now build the other fonts (bold, underlined, mixed).
     */
    GuiData->Font[FONT_BOLD] =
        FUNC2(GuiData->Font[FONT_NORMAL],
                          FontWeight < FW_BOLD ? FW_BOLD : FontWeight,
                          FALSE,
                          FALSE);
    GuiData->Font[FONT_UNDERLINE] =
        FUNC2(GuiData->Font[FONT_NORMAL],
                          FontWeight,
                          TRUE,
                          FALSE);
    GuiData->Font[FONT_BOLD | FONT_UNDERLINE] =
        FUNC2(GuiData->Font[FONT_NORMAL],
                          FontWeight < FW_BOLD ? FW_BOLD : FontWeight,
                          TRUE,
                          FALSE);

    /*
     * Save the settings.
     */
    if (FaceName != GuiData->GuiInfo.FaceName)
    {
        FUNC9(GuiData->GuiInfo.FaceName, FUNC0(GuiData->GuiInfo.FaceName),
                        FaceName, LF_FACESIZE);
    }
    GuiData->GuiInfo.FontFamily = FontFamily;
    GuiData->GuiInfo.FontSize   = FontSize;
    GuiData->GuiInfo.FontWeight = FontWeight;

    return TRUE;
}