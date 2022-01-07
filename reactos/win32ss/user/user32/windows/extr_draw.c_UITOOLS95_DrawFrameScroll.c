
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int lfFaceName; void* lfCharSet; void* lfWeight; scalar_t__ lfWidth; scalar_t__ lfHeight; } ;
struct TYPE_7__ {int right; scalar_t__ top; scalar_t__ left; scalar_t__ bottom; } ;
typedef char TCHAR ;
typedef TYPE_1__ RECT ;
typedef int LPRECT ;
typedef TYPE_2__ LOGFONTW ;
typedef int INT ;
typedef int HFONT ;
typedef int HDC ;
typedef int COLORREF ;
typedef int BOOL ;


 int BF_MIDDLE ;
 int BF_RECT ;
 int COLOR_BTNHIGHLIGHT ;
 int COLOR_BTNSHADOW ;
 int COLOR_BTNTEXT ;
 int COLOR_WINDOWFRAME ;
 int CreateFontIndirect (TYPE_2__*) ;
 void* DEFAULT_CHARSET ;
 int DFCS_FLAT ;
 int DFCS_INACTIVE ;
 int DFCS_MONO ;
 int DFCS_PUSHED ;







 int DeleteObject (int ) ;
 int EDGE_RAISED ;
 int EDGE_SUNKEN ;
 int FALSE ;
 void* FW_NORMAL ;
 int GetBkMode (int ) ;
 int GetSysColor (int ) ;
 int GetTextColor (int ) ;
 int IntDrawRectEdge (int ,int ,int ,int,int) ;
 int OffsetRect (TYPE_1__*,int,int) ;
 int SelectObject (int ,int ) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TEXT (char*) ;
 int TRANSPARENT ;
 int TRUE ;
 int TextOut (int ,scalar_t__,scalar_t__,char*,int) ;
 int UITOOLS_MakeSquareRect (int ,TYPE_1__*) ;
 int WARN (char*,int) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int lstrcpy (int ,int ) ;

__attribute__((used)) static BOOL UITOOLS95_DrawFrameScroll(HDC dc, LPRECT r, UINT uFlags)
{
    LOGFONTW lf;
    HFONT hFont, hOldFont;
    COLORREF clrsave;
    RECT myr;
    INT bkmode;
    TCHAR Symbol;
    switch(uFlags & 0xff)
    {
        case 134:
        case 133:
  Symbol = '6';
  break;

 case 128:
  Symbol = '5';
  break;

 case 132:
  Symbol = '3';
  break;

 case 131:
  Symbol = '4';
  break;

 case 130:
 case 129:
  ZeroMemory(&lf, sizeof(LOGFONTW));
  UITOOLS_MakeSquareRect(r, &myr);
  lf.lfHeight = myr.bottom - myr.top;
  lf.lfWidth = 0;
  lf.lfWeight = FW_NORMAL;
  lf.lfCharSet = DEFAULT_CHARSET;
  lstrcpy(lf.lfFaceName, TEXT("Marlett"));
  hFont = CreateFontIndirect(&lf);

  hOldFont = SelectObject(dc, hFont);
  clrsave = GetTextColor(dc);
  bkmode = GetBkMode(dc);

  SetBkMode(dc, TRANSPARENT);
  if (!(uFlags & (DFCS_MONO | DFCS_FLAT)))
  {
   SetTextColor(dc, GetSysColor(COLOR_BTNHIGHLIGHT));

   Symbol = ((uFlags & 0xff) == 130) ? 'o' : 'x';
   TextOut(dc, myr.left, myr.top, &Symbol, 1);
   SetTextColor(dc, GetSysColor(COLOR_BTNSHADOW));
  } else
   SetTextColor(dc, GetSysColor(COLOR_WINDOWFRAME));

  Symbol = ((uFlags & 0xff) == 130) ? 'p' : 'y';
  TextOut(dc, myr.left, myr.top, &Symbol, 1);

  SetTextColor(dc, clrsave);
  SelectObject(dc, hOldFont);
  SetBkMode(dc, bkmode);
  DeleteObject(hFont);
            return TRUE;
 default:
     WARN("Invalid scroll; flags=0x%04x\n", uFlags);
            return FALSE;
    }
    IntDrawRectEdge(dc, r, (uFlags & DFCS_PUSHED) ? EDGE_SUNKEN : EDGE_RAISED, (uFlags&DFCS_FLAT) | BF_MIDDLE | BF_RECT, 1);
    ZeroMemory(&lf, sizeof(LOGFONTW));
    UITOOLS_MakeSquareRect(r, &myr);
    myr.left += 1;
    myr.top += 1;
    myr.right -= 1;
    myr.bottom -= 1;
    if(uFlags & DFCS_PUSHED)
       OffsetRect(&myr,1,1);
    lf.lfHeight = myr.bottom - myr.top;
    lf.lfWidth = 0;
    lf.lfWeight = FW_NORMAL;
    lf.lfCharSet = DEFAULT_CHARSET;
    lstrcpy(lf.lfFaceName, TEXT("Marlett"));
    hFont = CreateFontIndirect(&lf);

    hOldFont = SelectObject(dc, hFont);
    clrsave = GetTextColor(dc);
    bkmode = GetBkMode(dc);

    SetBkMode(dc, TRANSPARENT);
    if(uFlags & DFCS_INACTIVE)
    {

        SetTextColor(dc, GetSysColor(COLOR_BTNHIGHLIGHT));
        TextOut(dc, myr.left + 1, myr.top + 1, &Symbol, 1);
    }
    SetTextColor(dc, GetSysColor((uFlags & DFCS_INACTIVE) ? COLOR_BTNSHADOW : COLOR_BTNTEXT));

    TextOut(dc, myr.left, myr.top, &Symbol, 1);

    SetTextColor(dc, clrsave);
    SelectObject(dc, hOldFont);
    SetBkMode(dc, bkmode);
    DeleteObject(hFont);
    return TRUE;
}
