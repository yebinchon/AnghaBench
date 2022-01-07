
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CSI ;
 scalar_t__ Columns ;
 scalar_t__ Rows ;
 int TRUE ;
 int out_char (unsigned char) ;
 int out_flush () ;
 int out_num (long) ;
 int size_set ;
 scalar_t__ term_console ;

void
mch_set_shellsize()
{
    if (term_console)
    {
 size_set = TRUE;
 out_char(CSI);
 out_num((long)Rows);
 out_char('t');
 out_char(CSI);
 out_num((long)Columns);
 out_char('u');
 out_flush();
    }
}
