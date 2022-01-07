
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fr_width; scalar_t__ fr_layout; int fr_height; struct TYPE_8__* fr_prev; TYPE_1__* fr_win; struct TYPE_8__* fr_parent; } ;
typedef TYPE_2__ frame_T ;
struct TYPE_10__ {int tp_ch_used; } ;
struct TYPE_9__ {TYPE_2__* w_frame; } ;
struct TYPE_7__ {scalar_t__ w_p_wfh; } ;


 scalar_t__ Columns ;
 int EMSG (int ) ;
 scalar_t__ FR_LEAF ;
 scalar_t__ NO_SCREEN ;
 scalar_t__ Rows ;
 int TRUE ;
 int _ (int ) ;
 scalar_t__ cmdline_row ;
 TYPE_6__* curtab ;
 int e_noroom ;
 int frame_add_height (TYPE_2__*,int) ;
 int frame_minheight (TYPE_2__*,int *) ;
 scalar_t__ full_screen ;
 TYPE_3__* lastwin ;
 scalar_t__ msg_row ;
 int p_ch ;
 int redraw_cmdline ;
 int screen_fill (int,int,int ,int,char,char,int ) ;
 scalar_t__ starting ;
 int win_comp_pos () ;
 int win_setheight (scalar_t__) ;

void
command_height()
{
    cmdline_row = Rows - p_ch;
    win_setheight(cmdline_row);

}
