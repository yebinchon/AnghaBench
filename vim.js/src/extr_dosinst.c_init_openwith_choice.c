
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; int * installfunc; int (* changefunc ) (size_t) ;} ;


 int add_dummy_choice () ;
 int change_openwith_choice (size_t) ;
 size_t choice_count ;
 TYPE_1__* choices ;
 scalar_t__ has_gvim ;
 int * searchpath (char*) ;

__attribute__((used)) static void
init_openwith_choice(void)
{
    if (has_gvim

     && searchpath("regedit.exe") != ((void*)0)

       )
    {
 choices[choice_count].changefunc = change_openwith_choice;
 choices[choice_count].installfunc = ((void*)0);
 choices[choice_count].active = 1;
 change_openwith_choice(choice_count);
 ++choice_count;
    }
    else
 add_dummy_choice();
}
