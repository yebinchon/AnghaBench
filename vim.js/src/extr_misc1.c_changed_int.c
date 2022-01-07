
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* b_changed; } ;


 void* TRUE ;
 int check_status (TYPE_1__*) ;
 TYPE_1__* curbuf ;
 int ml_setflags (TYPE_1__*) ;
 void* need_maketitle ;
 void* redraw_tabline ;

void
changed_int()
{
    curbuf->b_changed = TRUE;
    ml_setflags(curbuf);







}
