
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 scalar_t__ compl_cont_status ;
 void* compl_enter_selects ;
 int * compl_leader ;
 scalar_t__ compl_matches ;
 int * compl_orig_text ;
 int * compl_pattern ;
 void* compl_started ;
 int * edit_submode_extra ;
 int vim_free (int *) ;

__attribute__((used)) static void
ins_compl_clear()
{
    compl_cont_status = 0;
    compl_started = FALSE;
    compl_matches = 0;
    vim_free(compl_pattern);
    compl_pattern = ((void*)0);
    vim_free(compl_leader);
    compl_leader = ((void*)0);
    edit_submode_extra = ((void*)0);
    vim_free(compl_orig_text);
    compl_orig_text = ((void*)0);
    compl_enter_selects = FALSE;
}
