
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int lfFaceName; int lfCharSet; int lfWeight; scalar_t__ lfWidth; int lfHeight; } ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ left; } ;
typedef char TCHAR ;
typedef TYPE_1__ RECT ;
typedef int LPRECT ;
typedef TYPE_2__ LOGFONTW ;
typedef int INT ;
typedef int HFONT ;
typedef int HDC ;
typedef int BOOL ;


 int COLOR_BTNHIGHLIGHT ;
 int COLOR_BTNSHADOW ;
 int COLOR_BTNTEXT ;
 int CreateFontIndirect (TYPE_2__*) ;
 int DEFAULT_CHARSET ;
 int DFCS_INACTIVE ;






 int DeleteObject (int ) ;
 int FALSE ;
 int FW_NORMAL ;
 int GetSysColor (int ) ;
 int SelectObject (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TEXT (char*) ;
 int TRUE ;
 int TextOut (int ,scalar_t__,scalar_t__,char*,int) ;
 int UITOOLS_MakeSquareRect (int ,TYPE_1__*) ;
 int WARN (char*,int) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int lstrcpy (int ,int ) ;

__attribute__((used)) static BOOL UITOOLS95_DrawFrameMenu(HDC dc, LPRECT r, UINT uFlags)
{

    LOGFONTW lf;
    HFONT hFont, hOldFont;
    TCHAR Symbol;
    RECT myr;
    INT cxy;
    cxy = UITOOLS_MakeSquareRect(r, &myr);
    switch(uFlags & 0xff)
    {
        case 130:
            Symbol = '5';
            break;

        case 132:
            Symbol = '6';
            break;

        case 133:
            Symbol = '8';
            break;

        case 131:
     Symbol = 'w';
     break;

        case 129:
            Symbol = 'h';
            break;

        case 128:
            Symbol = 'a';
            break;

        default:
            WARN("Invalid menu; flags=0x%04x\n", uFlags);
            return FALSE;
    }

    ZeroMemory(&lf, sizeof(LOGFONTW));
    lf.lfHeight = cxy;
    lf.lfWidth = 0;
    lf.lfWeight = FW_NORMAL;
    lf.lfCharSet = DEFAULT_CHARSET;
    lstrcpy(lf.lfFaceName, TEXT("Marlett"));
    hFont = CreateFontIndirect(&lf);

    hOldFont = SelectObject(dc, hFont);

    if ((uFlags & 0xff) == 130 ||
        (uFlags & 0xff) == 132 )
    {
       SetTextColor(dc, GetSysColor((uFlags & DFCS_INACTIVE) ? COLOR_BTNSHADOW : COLOR_BTNTEXT));
    }

    TextOut(dc, myr.left, myr.top, &Symbol, 1);

    SelectObject(dc, hOldFont);
    DeleteObject(hFont);
    return TRUE;
}
