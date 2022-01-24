#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/  lfFaceName; int /*<<< orphan*/  lfCharSet; int /*<<< orphan*/  lfWeight; scalar_t__ lfWidth; scalar_t__ lfHeight; } ;
struct TYPE_7__ {int right; scalar_t__ top; scalar_t__ left; scalar_t__ bottom; } ;
typedef  char TCHAR ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPRECT ;
typedef  TYPE_2__ LOGFONTW ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BF_MIDDLE ; 
 int BF_RECT ; 
 int BF_SOFT ; 
 int /*<<< orphan*/  COLOR_BTNHIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_BTNSHADOW ; 
 int /*<<< orphan*/  COLOR_BTNTEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
#define  DFCS_CAPTIONCLOSE 132 
#define  DFCS_CAPTIONHELP 131 
#define  DFCS_CAPTIONMAX 130 
#define  DFCS_CAPTIONMIN 129 
#define  DFCS_CAPTIONRESTORE 128 
 int DFCS_INACTIVE ; 
 int DFCS_PUSHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_RAISED ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC16(HDC dc, LPRECT r, UINT uFlags)
{
    LOGFONTW lf;
    HFONT hFont, hOldFont;
    COLORREF clrsave;
    RECT myr;
    INT bkmode;
    TCHAR Symbol;
    switch(uFlags & 0xff)
    {
        case DFCS_CAPTIONCLOSE:
		Symbol = 'r';
		break;
        case DFCS_CAPTIONHELP:
		Symbol = 's';
		break;
        case DFCS_CAPTIONMIN:
		Symbol = '0';
		break;
        case DFCS_CAPTIONMAX:
		Symbol = '1';
		break;
        case DFCS_CAPTIONRESTORE:
		Symbol = '2';
		break;
        default:
             FUNC13("Invalid caption; flags=0x%04x\n", uFlags);
             return FALSE;
    }
    FUNC5(dc,r,(uFlags&DFCS_PUSHED) ? EDGE_SUNKEN : EDGE_RAISED, BF_RECT | BF_MIDDLE | BF_SOFT, 1);
    FUNC14(&lf, sizeof(LOGFONTW));
    FUNC12(r, &myr);
    myr.left += 1;
    myr.top += 1;
    myr.right -= 1;
    myr.bottom -= 1;
    if(uFlags & DFCS_PUSHED)
       FUNC6(&myr,1,1);
    lf.lfHeight = myr.bottom - myr.top;
    lf.lfWidth = 0;
    lf.lfWeight = FW_NORMAL;
    lf.lfCharSet = DEFAULT_CHARSET;
    FUNC15(lf.lfFaceName, FUNC10("Marlett"));
    hFont = FUNC0(&lf);
    /* save font and text color */
    hOldFont = FUNC7(dc, hFont);
    clrsave = FUNC4(dc);
    bkmode = FUNC2(dc);
    /* set color and drawing mode */
    FUNC8(dc, TRANSPARENT);
    if(uFlags & DFCS_INACTIVE)
    {
        /* draw shadow */
        FUNC9(dc, FUNC3(COLOR_BTNHIGHLIGHT));
        FUNC11(dc, myr.left + 1, myr.top + 1, &Symbol, 1);
    }
    FUNC9(dc, FUNC3((uFlags & DFCS_INACTIVE) ? COLOR_BTNSHADOW : COLOR_BTNTEXT));
    /* draw selected symbol */
    FUNC11(dc, myr.left, myr.top, &Symbol, 1);
    /* restore previous settings */
    FUNC9(dc, clrsave);
    FUNC7(dc, hOldFont);
    FUNC8(dc, bkmode);
    FUNC1(hFont);
    return TRUE;
}