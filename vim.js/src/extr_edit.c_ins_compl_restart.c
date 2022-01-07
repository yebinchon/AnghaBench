
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ compl_cont_mode ;
 scalar_t__ compl_cont_status ;
 scalar_t__ compl_matches ;
 int compl_started ;
 int ins_compl_free () ;

__attribute__((used)) static void
ins_compl_restart()
{
    ins_compl_free();
    compl_started = FALSE;
    compl_matches = 0;
    compl_cont_status = 0;
    compl_cont_mode = 0;
}
