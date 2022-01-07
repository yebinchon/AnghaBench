
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int Ctrl_N ;
 scalar_t__ FAIL ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ compl_cont_status ;
 int compl_enter_selects ;
 scalar_t__ compl_leader ;
 int * compl_match_array ;
 void* compl_restarting ;
 scalar_t__ compl_started ;
 void* compl_used_match ;
 TYPE_1__ gui ;
 int gui_update_cursor (void*,void*) ;
 int ins_bytes (scalar_t__) ;
 int ins_compl_del_pum () ;
 int ins_compl_delete () ;
 scalar_t__ ins_compl_len () ;
 int ins_compl_set_original_text (scalar_t__) ;
 int ins_compl_show_pum () ;
 scalar_t__ ins_complete (int ) ;
 int out_flush () ;
 int setcursor () ;
 scalar_t__ spell_bad_len ;
 int update_screen (int ) ;

__attribute__((used)) static void
ins_compl_new_leader()
{
    ins_compl_del_pum();
    ins_compl_delete();
    ins_bytes(compl_leader + ins_compl_len());
    compl_used_match = FALSE;

    if (compl_started)
 ins_compl_set_original_text(compl_leader);
    else
    {
 update_screen(0);
 compl_restarting = TRUE;
 if (ins_complete(Ctrl_N) == FAIL)
     compl_cont_status = 0;
 compl_restarting = FALSE;
    }

    compl_enter_selects = !compl_used_match;


    ins_compl_show_pum();


    if (compl_match_array == ((void*)0))
 compl_enter_selects = FALSE;
}
