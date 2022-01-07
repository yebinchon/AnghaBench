
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int array; } ;
struct options_entry {TYPE_1__ value; } ;
struct options_array_item {int index; } ;


 struct options_array_item* RB_FIND (int ,int *,struct options_array_item*) ;
 int options_array ;

__attribute__((used)) static struct options_array_item *
options_array_item(struct options_entry *o, u_int idx)
{
 struct options_array_item a;

 a.index = idx;
 return (RB_FIND(options_array, &o->value.array, &a));
}
