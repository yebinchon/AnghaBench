#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/  lfQuality; int /*<<< orphan*/  lfFaceName; int /*<<< orphan*/  lfCharSet; scalar_t__ lfHeight; } ;
struct TYPE_11__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_10__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  char TCHAR ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__* LPRECT ;
typedef  TYPE_3__ LOGFONTW ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HGDIOBJ ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int COLOR_3DDKSHADOW ; 
 int COLOR_3DLIGHT ; 
 int COLOR_BTNFACE ; 
 int COLOR_BTNHIGHLIGHT ; 
 int COLOR_BTNSHADOW ; 
 int COLOR_WINDOW ; 
 int COLOR_WINDOWFRAME ; 
 int COLOR_WINDOWTEXT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int DFCS_BUTTONRADIOMASK ; 
 int DFCS_CHECKED ; 
 int DFCS_FLAT ; 
 int DFCS_INACTIVE ; 
 int DFCS_MONO ; 
 int DFCS_PUSHED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  NONANTIALIASED_QUALITY ; 
 int /*<<< orphan*/  NULL_PEN ; 
 scalar_t__ OPAQUE ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ TRANSPARENT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC19(HDC dc, LPRECT r, UINT uFlags, BOOL Radio)
{
    LOGFONTW lf;
    HFONT hFont, hOldFont;
    int i;
    TCHAR OutRight, OutLeft, InRight, InLeft, Center;
    INT X, Y, Width, Height, Shorter;
    INT BkMode = FUNC4(dc);
    COLORREF TextColor = FUNC7(dc);

    Width = r->right - r->left;
    Height = r->bottom - r->top;
    Shorter = (Width < Height) ? Width : Height;
    X = r->left + (Width - Shorter) / 2;
    Y = r->top + (Height - Shorter) / 2;

    if (Radio)
    {
        OutRight = 'j'; // Outer right
        OutLeft  = 'k'; // Outer left
        InRight  = 'l'; // inner left
        InLeft   = 'm'; // inner right
        Center   = 'n'; // center
    }
    else
    {
        OutRight = 'c'; // Outer right
        OutLeft  = 'd'; // Outer left
        InRight  = 'e'; // inner left
        InLeft   = 'f'; // inner right
        Center   = 'g'; // center
    }

    FUNC17(&lf, sizeof(LOGFONTW));
    lf.lfHeight = Shorter;
    lf.lfCharSet = DEFAULT_CHARSET;
    FUNC18(lf.lfFaceName, FUNC15("Marlett"));
    if (Radio && ((uFlags & 0xFF) == DFCS_BUTTONRADIOMASK))
    {
        lf.lfQuality = NONANTIALIASED_QUALITY;
    }
    hFont = FUNC0(&lf);
    hOldFont = FUNC10(dc, hFont);

    if (Radio && ((uFlags & 0xFF) == DFCS_BUTTONRADIOMASK))
    {
#if 1
        // FIXME: improve font rendering
        RECT Rect;
        HGDIOBJ hbrOld, hpenOld;
        FUNC3(dc, r, (HBRUSH)FUNC5(WHITE_BRUSH));
        FUNC13(&Rect, X, Y, X + Shorter, Y + Shorter);
        FUNC8(&Rect, -(Shorter * 8) / 54, -(Shorter * 8) / 54);
        hbrOld = FUNC10(dc, FUNC5(BLACK_BRUSH));
        hpenOld = FUNC10(dc, FUNC5(NULL_PEN));
        FUNC2(dc, Rect.left, Rect.top, Rect.right, Rect.bottom);
        FUNC10(dc, hbrOld);
        FUNC10(dc, hpenOld);
#else
        SetBkMode(dc, OPAQUE);
        SetBkColor(dc, RGB(255, 255, 255));
        SetTextColor(dc, RGB(0, 0, 0));
        TextOut(dc, X, Y, &Center, 1);
        SetBkMode(dc, TRANSPARENT);
        TextOut(dc, X, Y, &OutRight, 1);
        TextOut(dc, X, Y, &OutLeft, 1);
        TextOut(dc, X, Y, &InRight, 1);
        TextOut(dc, X, Y, &InLeft, 1);
#endif
    }
    else
    {
        FUNC12(dc, TRANSPARENT);

        /* Center section, white for active, grey for inactive */
        if ((uFlags & (DFCS_INACTIVE | DFCS_PUSHED)))
            i = COLOR_BTNFACE;
        else
            i = COLOR_WINDOW;
        FUNC14(dc, FUNC6(i));
        FUNC16(dc, X, Y, &Center, 1);

        if (uFlags & (DFCS_FLAT | DFCS_MONO))
        {
            FUNC14(dc, FUNC6(COLOR_WINDOWFRAME));
            FUNC16(dc, X, Y, &OutRight, 1);
            FUNC16(dc, X, Y, &OutLeft, 1);
            FUNC16(dc, X, Y, &InRight, 1);
            FUNC16(dc, X, Y, &InLeft, 1);
        }
        else
        {
            FUNC14(dc, FUNC6(COLOR_BTNSHADOW));
            FUNC16(dc, X, Y, &OutRight, 1);
            FUNC14(dc, FUNC6(COLOR_BTNHIGHLIGHT));
            FUNC16(dc, X, Y, &OutLeft, 1);
            FUNC14(dc, FUNC6(COLOR_3DDKSHADOW));
            FUNC16(dc, X, Y, &InRight, 1);
            FUNC14(dc, FUNC6(COLOR_3DLIGHT));
            FUNC16(dc, X, Y, &InLeft, 1);
        }

        if (uFlags & DFCS_CHECKED)
        {
            TCHAR Check = (Radio) ? 'i' : 'b';

            FUNC14(dc, FUNC6(COLOR_WINDOWTEXT));
            FUNC16(dc, X, Y, &Check, 1);
        }
    }

    FUNC10(dc, hOldFont);
    FUNC1(hFont);

    FUNC14(dc, TextColor);
    FUNC12(dc, BkMode);

    return TRUE;
}