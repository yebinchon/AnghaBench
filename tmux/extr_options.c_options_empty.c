
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct options_table_entry {int flags; int name; } ;
struct TYPE_2__ {int array; } ;
struct options_entry {TYPE_1__ value; struct options_table_entry const* tableentry; } ;
struct options {int dummy; } ;


 int OPTIONS_TABLE_IS_ARRAY ;
 int RB_INIT (int *) ;
 struct options_entry* options_add (struct options*,int ) ;

struct options_entry *
options_empty(struct options *oo, const struct options_table_entry *oe)
{
 struct options_entry *o;

 o = options_add(oo, oe->name);
 o->tableentry = oe;

 if (oe->flags & OPTIONS_TABLE_IS_ARRAY)
  RB_INIT(&o->value.array);

 return (o);
}
