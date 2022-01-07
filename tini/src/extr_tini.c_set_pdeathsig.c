
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; int name; } ;


 size_t ARRAY_LEN (TYPE_1__*) ;
 int parent_death_signal ;
 TYPE_1__* signal_names ;
 scalar_t__ strcmp (int ,char* const) ;

int set_pdeathsig(char* const arg) {
 size_t i;

 for (i = 0; i < ARRAY_LEN(signal_names); i++) {
  if (strcmp(signal_names[i].name, arg) == 0) {

   parent_death_signal = signal_names[i].number;
   return 0;
  }
 }

 return 1;
}
