
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int key_bindings; } ;
struct key_binding {int key; } ;
typedef int key_code ;


 struct key_binding* RB_FIND (int ,int *,struct key_binding*) ;
 int key_bindings ;

struct key_binding *
key_bindings_get(struct key_table *table, key_code key)
{
 struct key_binding bd;

 bd.key = key;
 return (RB_FIND(key_bindings, &table->key_bindings, &bd));
}
