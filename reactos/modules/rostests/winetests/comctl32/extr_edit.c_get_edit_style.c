
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HWND ;


 int ES_AUTOHSCROLL ;
 int ES_AUTOVSCROLL ;
 int ES_COMBO ;
 int ES_LEFT ;
 int ES_LOWERCASE ;
 int ES_MULTILINE ;
 int ES_NOHIDESEL ;
 int ES_NUMBER ;
 int ES_PASSWORD ;
 int ES_READONLY ;
 int ES_UPPERCASE ;
 int ES_WANTRETURN ;
 int GWL_STYLE ;
 int GetWindowLongA (int ,int ) ;

__attribute__((used)) static LONG get_edit_style (HWND hwnd)
{
    return GetWindowLongA( hwnd, GWL_STYLE ) & (
 ES_LEFT |





 ES_MULTILINE |
 ES_UPPERCASE |
 ES_LOWERCASE |
 ES_PASSWORD |
 ES_AUTOVSCROLL |
 ES_AUTOHSCROLL |
 ES_NOHIDESEL |
 ES_COMBO |
 ES_READONLY |
 ES_WANTRETURN |
 ES_NUMBER
 );
}
