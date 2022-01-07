
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int active; scalar_t__ arg; int * installfunc; int changefunc; int text; } ;
struct TYPE_3__ {char* exenamearg; int * oldexe; } ;


 int TARGET_COUNT ;
 int add_dummy_choice () ;
 int bat_text_yes ;
 int change_main_bat_choice ;
 size_t choice_count ;
 TYPE_2__* choices ;
 scalar_t__ has_gvim ;
 scalar_t__ has_vim ;
 int init_bat_choice (int) ;
 TYPE_1__* targets ;

__attribute__((used)) static void
init_bat_choices(void)
{
    int i;



    choices[choice_count].text = bat_text_yes;
    choices[choice_count].changefunc = change_main_bat_choice;
    choices[choice_count].installfunc = ((void*)0);
    choices[choice_count].active = 1;
    choices[choice_count].arg = 0;
    ++choice_count;



    for (i = 1; i < TARGET_COUNT; ++i)
 if (targets[i].oldexe == ((void*)0)
  && (targets[i].exenamearg[0] == 'g' ? has_gvim : has_vim))
     init_bat_choice(i);
 else
     add_dummy_choice();
}
