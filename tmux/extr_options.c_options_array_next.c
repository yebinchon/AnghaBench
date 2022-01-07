
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct options_array_item {int dummy; } ;
struct TYPE_3__ {int array; } ;
struct TYPE_4__ {TYPE_1__ value; } ;


 struct options_array_item* RB_NEXT (int ,int *,struct options_array_item*) ;
 TYPE_2__* o ;
 int options_array ;

struct options_array_item *
options_array_next(struct options_array_item *a)
{
 return (RB_NEXT(options_array, &o->value.array, a));
}
