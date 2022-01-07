
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cx; } ;
typedef TYPE_1__ SIZE ;
typedef int SCRIPT_STRING_ANALYSIS ;
typedef int LPCWSTR ;
typedef scalar_t__ HRESULT ;
typedef int HPEN ;
typedef int HDC ;
typedef int DWORD ;


 int CreatePen (int ,int,int ) ;
 int DeleteObject (int ) ;
 int FALSE ;
 int GetLayout (int ) ;
 int GetTextAlign (int ) ;
 int GetTextColor (int ) ;
 int GetTextExtentPointW (int ,int ,int,TYPE_1__*) ;
 int LAYOUT_RTL ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int *) ;
 int PS_SOLID ;
 int SIC_COMPLEX ;
 int SSA_GLYPHS ;
 int SSA_RTL ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ ScriptIsComplex (int ,int,int ) ;
 scalar_t__ ScriptStringAnalyse (int ,int ,int,int,int,int ,int,int *,int *,int *,int *,int *,int *) ;
 int ScriptStringCPtoX (int ,int,int ,int*) ;
 int ScriptStringFree (int *) ;
 int SelectObject (int ,int ) ;
 int TA_RTLREADING ;
 int TRUE ;

__attribute__((used)) static void LPK_DrawUnderscore(HDC hdc, int x, int y, LPCWSTR str, int count, int offset)
{
    SCRIPT_STRING_ANALYSIS ssa;
    DWORD dwSSAFlags = SSA_GLYPHS;
    int prefix_x;
    int prefix_end;
    int pos;
    SIZE size;
    HPEN hpen;
    HPEN oldPen;
    HRESULT hr = S_FALSE;

    if (offset == -1)
        return;

    if (ScriptIsComplex(str, count, SIC_COMPLEX) == S_OK)
    {
        if (GetLayout(hdc) & LAYOUT_RTL || GetTextAlign(hdc) & TA_RTLREADING)
            dwSSAFlags |= SSA_RTL;

        hr = ScriptStringAnalyse(hdc, str, count, (3 * count / 2 + 16),
                                 -1, dwSSAFlags, -1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &ssa);
    }

    if (hr == S_OK)
    {
        ScriptStringCPtoX(ssa, offset, FALSE, &pos);
        prefix_x = x + pos;
        ScriptStringCPtoX(ssa, offset, TRUE, &pos);
        prefix_end = x + pos;
        ScriptStringFree(&ssa);
    }
    else
    {
        GetTextExtentPointW(hdc, str, offset, &size);
        prefix_x = x + size.cx;
        GetTextExtentPointW(hdc, str, offset + 1, &size);
        prefix_end = x + size.cx - 1;
    }
    hpen = CreatePen(PS_SOLID, 1, GetTextColor(hdc));
    oldPen = SelectObject(hdc, hpen);
    MoveToEx(hdc, prefix_x, y, ((void*)0));
    LineTo(hdc, prefix_end, y);
    SelectObject(hdc, oldPen);
    DeleteObject(hpen);
}
