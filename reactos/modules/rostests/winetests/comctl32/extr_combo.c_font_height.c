
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICA ;
typedef int HFONT ;
typedef int HDC ;


 int CreateCompatibleDC (int *) ;
 int DeleteDC (int ) ;
 int GetTextMetricsA (int ,TYPE_1__*) ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static int font_height(HFONT hFont)
{
    TEXTMETRICA tm;
    HFONT hFontOld;
    HDC hDC;

    hDC = CreateCompatibleDC(((void*)0));
    hFontOld = SelectObject(hDC, hFont);
    GetTextMetricsA(hDC, &tm);
    SelectObject(hDC, hFontOld);
    DeleteDC(hDC);

    return tm.tmHeight;
}
