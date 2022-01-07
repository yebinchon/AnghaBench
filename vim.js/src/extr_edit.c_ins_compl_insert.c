
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cp_flags; scalar_t__ cp_str; } ;


 int FALSE ;
 int ORIGINAL_TEXT ;
 int TRUE ;
 TYPE_1__* compl_shown_match ;
 int compl_used_match ;
 int ins_bytes (scalar_t__) ;
 scalar_t__ ins_compl_len () ;

__attribute__((used)) static void
ins_compl_insert()
{
    ins_bytes(compl_shown_match->cp_str + ins_compl_len());
    if (compl_shown_match->cp_flags & ORIGINAL_TEXT)
 compl_used_match = FALSE;
    else
 compl_used_match = TRUE;
}
