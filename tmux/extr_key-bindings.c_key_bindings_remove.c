
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {int key; int key_bindings; int cmdlist; } ;
struct key_binding {int key; int key_bindings; int cmdlist; } ;
typedef int key_code ;


 int KEYC_XTERM ;
 scalar_t__ RB_EMPTY (int *) ;
 struct key_table* RB_FIND (int ,int *,struct key_table*) ;
 int RB_REMOVE (int ,int *,struct key_table*) ;
 int cmd_list_free (int ) ;
 int free (struct key_table*) ;
 int key_bindings ;
 struct key_table* key_bindings_get_table (char const*,int ) ;
 int key_bindings_unref_table (struct key_table*) ;
 int key_tables ;

void
key_bindings_remove(const char *name, key_code key)
{
 struct key_table *table;
 struct key_binding bd_find, *bd;

 table = key_bindings_get_table(name, 0);
 if (table == ((void*)0))
  return;

 bd_find.key = (key & ~KEYC_XTERM);
 bd = RB_FIND(key_bindings, &table->key_bindings, &bd_find);
 if (bd == ((void*)0))
  return;

 RB_REMOVE(key_bindings, &table->key_bindings, bd);
 cmd_list_free(bd->cmdlist);
 free(bd);

 if (RB_EMPTY(&table->key_bindings)) {
  RB_REMOVE(key_tables, &key_tables, table);
  key_bindings_unref_table(table);
 }
}
