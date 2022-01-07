
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Rows ;
 int limit_screen_size () ;
 scalar_t__ min_rows () ;

void
check_shellsize()
{
    if (Rows < min_rows())
 Rows = min_rows();
    limit_screen_size();
}
