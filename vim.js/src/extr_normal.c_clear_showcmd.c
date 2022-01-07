
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int linenr_T ;
typedef scalar_t__ colnr_T ;
typedef scalar_t__ char_u ;
struct TYPE_10__ {int lnum; } ;
struct TYPE_11__ {TYPE_3__ w_cursor; } ;
struct TYPE_9__ {int lnum; } ;


 char Ctrl_V ;
 int FALSE ;
 scalar_t__ NUL ;
 size_t SHOWCMD_COLS ;
 int TRUE ;
 TYPE_1__ VIsual ;
 scalar_t__ VIsual_active ;
 char VIsual_mode ;
 int char_avail () ;
 TYPE_4__* curwin ;
 int display_showcmd () ;
 scalar_t__* empty_option ;
 int getvcols (TYPE_4__*,TYPE_3__*,TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int hasFolding (int,int*,int*) ;
 int lt (TYPE_1__,TYPE_3__) ;
 int mb_ptr2len (scalar_t__*) ;
 scalar_t__* ml_get_cursor () ;
 scalar_t__* ml_get_pos (TYPE_1__*) ;
 scalar_t__* p_sbr ;
 int p_sc ;
 char* p_sel ;
 scalar_t__* showcmd_buf ;
 scalar_t__ showcmd_is_clear ;
 int showcmd_visual ;
 int sprintf (char*,char*,int,...) ;
 int stub1 (scalar_t__*) ;

void
clear_showcmd()
{
    if (!p_sc)
 return;
    {
 showcmd_buf[0] = NUL;
 showcmd_visual = FALSE;


 if (showcmd_is_clear)
     return;
    }

    display_showcmd();
}
