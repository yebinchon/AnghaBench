
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int dummy; } ;


 struct key_table* RB_NEXT (int ,int *,struct key_table*) ;
 int key_tables ;

struct key_table *
key_bindings_next_table(struct key_table *table)
{
 return (RB_NEXT(key_tables, &key_tables, table));
}
