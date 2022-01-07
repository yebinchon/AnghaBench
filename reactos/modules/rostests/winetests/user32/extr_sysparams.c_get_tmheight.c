
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tmHeight; int tmExternalLeading; } ;
typedef TYPE_1__ TEXTMETRICA ;
typedef int LOGFONTA ;
typedef int HFONT ;


 int CreateFontIndirectA (int *) ;
 int GetTextMetricsA (int ,TYPE_1__*) ;
 int SelectObject (int ,int ) ;
 int hdc ;

__attribute__((used)) static int get_tmheight( LOGFONTA *plf, int flag)
{
    TEXTMETRICA tm;
    HFONT hfont = CreateFontIndirectA( plf);
    hfont = SelectObject( hdc, hfont);
    GetTextMetricsA( hdc, &tm);
    hfont = SelectObject( hdc, hfont);
    return tm.tmHeight + (flag ? tm.tmExternalLeading : 0);
}
