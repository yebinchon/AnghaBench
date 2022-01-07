
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ w_height; struct TYPE_3__* w_next; } ;
typedef TYPE_1__ win_T ;


 int EMSG (int ) ;
 int FALSE ;
 int TRUE ;
 int _ (int ) ;
 int e_noroom ;
 TYPE_1__* firstwin ;
 int p_wh ;
 scalar_t__ p_wmh ;

void
win_setminheight()
{
    int room;
    int first = TRUE;
    win_T *wp;


    while (p_wmh > 0)
    {

 room = -p_wh;
 for (wp = firstwin; wp != ((void*)0); wp = wp->w_next)
     room += wp->w_height - p_wmh;
 if (room >= 0)
     break;
 --p_wmh;
 if (first)
 {
     EMSG(_(e_noroom));
     first = FALSE;
 }
    }
}
