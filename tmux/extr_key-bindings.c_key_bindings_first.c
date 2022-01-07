
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int key_bindings; } ;
struct key_binding {int dummy; } ;


 struct key_binding* RB_MIN (int ,int *) ;
 int key_bindings ;

struct key_binding *
key_bindings_first(struct key_table *table)
{
 return (RB_MIN(key_bindings, &table->key_bindings));
}
