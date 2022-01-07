
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cterm_normal_bg_color ;
 scalar_t__ cterm_normal_fg_bold ;
 scalar_t__ cterm_normal_fg_color ;
 int mch_set_normal_colors () ;

void
restore_cterm_colors()
{






    cterm_normal_fg_color = 0;
    cterm_normal_fg_bold = 0;
    cterm_normal_bg_color = 0;

}
