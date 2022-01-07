
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_6__ {TYPE_1__* w_buffer; } ;
struct TYPE_5__ {int vimWindow; } ;
struct TYPE_4__ {int b_fnum; } ;


 int PtSetResource (int ,int ,int *,int ) ;
 int Pt_ARG_WINDOW_TITLE ;
 TYPE_3__* curwin ;
 TYPE_2__ gui ;
 int gui_ph_pg_set_buffer_num (int ) ;

void
gui_mch_settitle(char_u *title, char_u *icon)
{



    PtSetResource(gui.vimWindow, Pt_ARG_WINDOW_TITLE, title, 0);

}
