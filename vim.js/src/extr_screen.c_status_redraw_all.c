
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_redr_status; scalar_t__ w_status_height; struct TYPE_3__* w_next; } ;
typedef TYPE_1__ win_T ;


 int TRUE ;
 int VALID ;
 TYPE_1__* firstwin ;
 int redraw_later (int ) ;

void
status_redraw_all()
{
    win_T *wp;

    for (wp = firstwin; wp; wp = wp->w_next)
 if (wp->w_status_height)
 {
     wp->w_redr_status = TRUE;
     redraw_later(VALID);
 }
}
