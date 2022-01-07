
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ga_len; } ;


 int FALSE ;
 int TRUE ;
 int check_state_ends () ;
 scalar_t__ current_col ;
 int current_finished ;
 int current_line_id ;
 TYPE_1__ current_state ;
 int next_match_idx ;
 int syn_update_ends (int ) ;

__attribute__((used)) static void
syn_start_line()
{
    current_finished = FALSE;
    current_col = 0;





    if (current_state.ga_len > 0)
    {
 syn_update_ends(TRUE);
 check_state_ends();
    }

    next_match_idx = -1;
    ++current_line_id;
}
