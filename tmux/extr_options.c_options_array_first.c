
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct options_entry {TYPE_1__ value; } ;
struct options_array_item {int dummy; } ;


 int OPTIONS_IS_ARRAY (struct options_entry*) ;
 struct options_array_item* RB_MIN (int ,int *) ;
 int options_array ;

struct options_array_item *
options_array_first(struct options_entry *o)
{
 if (!OPTIONS_IS_ARRAY(o))
  return (((void*)0));
 return (RB_MIN(options_array, &o->value.array));
}
