
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ w_p_pvw; TYPE_1__* w_buffer; struct TYPE_9__* w_next; } ;
typedef TYPE_2__ win_T ;
struct TYPE_11__ {int b_help; } ;
struct TYPE_10__ {int * tp_next; } ;
struct TYPE_8__ {scalar_t__ b_help; } ;


 int FALSE ;
 int TRUE ;
 TYPE_2__* aucmd_win ;
 TYPE_6__* curbuf ;
 TYPE_2__* curwin ;
 TYPE_4__* first_tabpage ;
 TYPE_2__* firstwin ;

int
only_one_window()
{
    return TRUE;

}
