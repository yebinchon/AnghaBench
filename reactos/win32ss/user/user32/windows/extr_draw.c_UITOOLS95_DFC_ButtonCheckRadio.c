
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {int lfQuality; int lfFaceName; int lfCharSet; scalar_t__ lfHeight; } ;
struct TYPE_11__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_10__ {int bottom; int right; int top; int left; } ;
typedef char TCHAR ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPRECT ;
typedef TYPE_3__ LOGFONTW ;
typedef scalar_t__ INT ;
typedef scalar_t__ HGDIOBJ ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int COLORREF ;
typedef scalar_t__ BOOL ;


 int BLACK_BRUSH ;
 int COLOR_3DDKSHADOW ;
 int COLOR_3DLIGHT ;
 int COLOR_BTNFACE ;
 int COLOR_BTNHIGHLIGHT ;
 int COLOR_BTNSHADOW ;
 int COLOR_WINDOW ;
 int COLOR_WINDOWFRAME ;
 int COLOR_WINDOWTEXT ;
 scalar_t__ CreateFontIndirect (TYPE_3__*) ;
 int DEFAULT_CHARSET ;
 int DFCS_BUTTONRADIOMASK ;
 int DFCS_CHECKED ;
 int DFCS_FLAT ;
 int DFCS_INACTIVE ;
 int DFCS_MONO ;
 int DFCS_PUSHED ;
 int DeleteObject (scalar_t__) ;
 int Ellipse (int ,int ,int ,int ,int ) ;
 int FillRect (int ,TYPE_2__*,int ) ;
 scalar_t__ GetBkMode (int ) ;
 scalar_t__ GetStockObject (int ) ;
 int GetSysColor (int) ;
 int GetTextColor (int ) ;
 int InflateRect (TYPE_1__*,scalar_t__,scalar_t__) ;
 int NONANTIALIASED_QUALITY ;
 int NULL_PEN ;
 scalar_t__ OPAQUE ;
 int RGB (int,int,int) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetBkColor (int ,int ) ;
 int SetBkMode (int ,scalar_t__) ;
 int SetRect (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SetTextColor (int ,int ) ;
 int TEXT (char*) ;
 scalar_t__ TRANSPARENT ;
 scalar_t__ TRUE ;
 int TextOut (int ,scalar_t__,scalar_t__,char*,int) ;
 int WHITE_BRUSH ;
 int ZeroMemory (TYPE_3__*,int) ;
 int lstrcpy (int ,int ) ;

__attribute__((used)) static BOOL UITOOLS95_DFC_ButtonCheckRadio(HDC dc, LPRECT r, UINT uFlags, BOOL Radio)
{
    LOGFONTW lf;
    HFONT hFont, hOldFont;
    int i;
    TCHAR OutRight, OutLeft, InRight, InLeft, Center;
    INT X, Y, Width, Height, Shorter;
    INT BkMode = GetBkMode(dc);
    COLORREF TextColor = GetTextColor(dc);

    Width = r->right - r->left;
    Height = r->bottom - r->top;
    Shorter = (Width < Height) ? Width : Height;
    X = r->left + (Width - Shorter) / 2;
    Y = r->top + (Height - Shorter) / 2;

    if (Radio)
    {
        OutRight = 'j';
        OutLeft = 'k';
        InRight = 'l';
        InLeft = 'm';
        Center = 'n';
    }
    else
    {
        OutRight = 'c';
        OutLeft = 'd';
        InRight = 'e';
        InLeft = 'f';
        Center = 'g';
    }

    ZeroMemory(&lf, sizeof(LOGFONTW));
    lf.lfHeight = Shorter;
    lf.lfCharSet = DEFAULT_CHARSET;
    lstrcpy(lf.lfFaceName, TEXT("Marlett"));
    if (Radio && ((uFlags & 0xFF) == DFCS_BUTTONRADIOMASK))
    {
        lf.lfQuality = NONANTIALIASED_QUALITY;
    }
    hFont = CreateFontIndirect(&lf);
    hOldFont = SelectObject(dc, hFont);

    if (Radio && ((uFlags & 0xFF) == DFCS_BUTTONRADIOMASK))
    {


        RECT Rect;
        HGDIOBJ hbrOld, hpenOld;
        FillRect(dc, r, (HBRUSH)GetStockObject(WHITE_BRUSH));
        SetRect(&Rect, X, Y, X + Shorter, Y + Shorter);
        InflateRect(&Rect, -(Shorter * 8) / 54, -(Shorter * 8) / 54);
        hbrOld = SelectObject(dc, GetStockObject(BLACK_BRUSH));
        hpenOld = SelectObject(dc, GetStockObject(NULL_PEN));
        Ellipse(dc, Rect.left, Rect.top, Rect.right, Rect.bottom);
        SelectObject(dc, hbrOld);
        SelectObject(dc, hpenOld);
    }
    else
    {
        SetBkMode(dc, TRANSPARENT);


        if ((uFlags & (DFCS_INACTIVE | DFCS_PUSHED)))
            i = COLOR_BTNFACE;
        else
            i = COLOR_WINDOW;
        SetTextColor(dc, GetSysColor(i));
        TextOut(dc, X, Y, &Center, 1);

        if (uFlags & (DFCS_FLAT | DFCS_MONO))
        {
            SetTextColor(dc, GetSysColor(COLOR_WINDOWFRAME));
            TextOut(dc, X, Y, &OutRight, 1);
            TextOut(dc, X, Y, &OutLeft, 1);
            TextOut(dc, X, Y, &InRight, 1);
            TextOut(dc, X, Y, &InLeft, 1);
        }
        else
        {
            SetTextColor(dc, GetSysColor(COLOR_BTNSHADOW));
            TextOut(dc, X, Y, &OutRight, 1);
            SetTextColor(dc, GetSysColor(COLOR_BTNHIGHLIGHT));
            TextOut(dc, X, Y, &OutLeft, 1);
            SetTextColor(dc, GetSysColor(COLOR_3DDKSHADOW));
            TextOut(dc, X, Y, &InRight, 1);
            SetTextColor(dc, GetSysColor(COLOR_3DLIGHT));
            TextOut(dc, X, Y, &InLeft, 1);
        }

        if (uFlags & DFCS_CHECKED)
        {
            TCHAR Check = (Radio) ? 'i' : 'b';

            SetTextColor(dc, GetSysColor(COLOR_WINDOWTEXT));
            TextOut(dc, X, Y, &Check, 1);
        }
    }

    SelectObject(dc, hOldFont);
    DeleteObject(hFont);

    SetTextColor(dc, TextColor);
    SetBkMode(dc, BkMode);

    return TRUE;
}
