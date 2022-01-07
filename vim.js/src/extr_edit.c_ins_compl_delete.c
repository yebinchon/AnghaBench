
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONT_ADDING ;
 int backspace_until_column (int) ;
 int changed_cline_bef_curs () ;
 int compl_col ;
 int compl_cont_status ;
 int compl_length ;

__attribute__((used)) static void
ins_compl_delete()
{
    int i;





    i = compl_col + (compl_cont_status & CONT_ADDING ? compl_length : 0);
    backspace_until_column(i);
    changed_cline_bef_curs();
}
