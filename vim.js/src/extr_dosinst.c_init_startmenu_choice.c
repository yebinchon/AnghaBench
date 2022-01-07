
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; int * installfunc; int (* changefunc ) (size_t) ;} ;


 int add_dummy_choice () ;
 size_t choice_count ;
 TYPE_1__* choices ;
 int toggle_startmenu_choice (size_t) ;

__attribute__((used)) static void
init_startmenu_choice(void)
{
    add_dummy_choice();

}
