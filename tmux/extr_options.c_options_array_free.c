
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct options_entry {TYPE_1__ value; } ;
struct options_array_item {int value; } ;


 int RB_REMOVE (int ,int *,struct options_array_item*) ;
 int free (struct options_array_item*) ;
 int options_array ;
 int options_value_free (struct options_entry*,int *) ;

__attribute__((used)) static void
options_array_free(struct options_entry *o, struct options_array_item *a)
{
 options_value_free(o, &a->value);
 RB_REMOVE(options_array, &o->value.array, a);
 free(a);
}
