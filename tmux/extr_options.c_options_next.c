
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct options_entry {int dummy; } ;
struct TYPE_2__ {int tree; } ;


 struct options_entry* RB_NEXT (int ,int *,struct options_entry*) ;
 TYPE_1__* oo ;
 int options_tree ;

struct options_entry *
options_next(struct options_entry *o)
{
 return (RB_NEXT(options_tree, &oo->tree, o));
}
