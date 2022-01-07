
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Columns ;
 int OK ;
 int Rows ;
 int limit_screen_size () ;

int
mch_get_shellsize()
{
    Rows = 1;
    Columns = 1;
    limit_screen_size();
    return OK;
}
