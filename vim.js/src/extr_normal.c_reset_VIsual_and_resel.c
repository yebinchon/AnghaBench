
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int INVERTED ;
 scalar_t__ VIsual_active ;
 int VIsual_reselect ;
 int end_visual_mode () ;
 int redraw_curbuf_later (int ) ;

void
reset_VIsual_and_resel()
{
    if (VIsual_active)
    {
 end_visual_mode();
 redraw_curbuf_later(INVERTED);
    }
    VIsual_reselect = FALSE;
}
