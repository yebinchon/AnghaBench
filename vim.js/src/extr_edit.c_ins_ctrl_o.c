
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ NUL ;
 int REPLACE_FLAG ;
 int State ;
 int VREPLACE_FLAG ;
 scalar_t__ gchar_cursor () ;
 int ins_at_eol ;
 char restart_edit ;
 scalar_t__ virtual_active () ;

__attribute__((used)) static void
ins_ctrl_o()
{





 if (State & REPLACE_FLAG)
 restart_edit = 'R';
    else
 restart_edit = 'I';





 ins_at_eol = (gchar_cursor() == NUL);
}
