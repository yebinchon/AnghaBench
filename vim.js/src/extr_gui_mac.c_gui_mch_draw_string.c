
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int draw_string_ATSUI (int,int,int *,int,int) ;
 int draw_string_QD (int,int,int *,int,int) ;
 int gui_mac_create_atsui_style () ;
 int gui_mac_dispose_atsui_style () ;
 scalar_t__ p_macatsui ;
 scalar_t__ p_macatsui_last ;

void
gui_mch_draw_string(int row, int col, char_u *s, int len, int flags)
{
 draw_string_QD(row, col, s, len, flags);
}
