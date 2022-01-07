
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_cursor_col () ;
 int check_cursor_lnum () ;

void
check_cursor()
{
    check_cursor_lnum();
    check_cursor_col();
}
