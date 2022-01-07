
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_table {char const* name; int references; int key_bindings; } ;


 struct key_table* RB_FIND (int ,int *,struct key_table*) ;
 int RB_INIT (int *) ;
 int RB_INSERT (int ,int *,struct key_table*) ;
 int key_tables ;
 struct key_table* xmalloc (int) ;
 char const* xstrdup (char const*) ;

struct key_table *
key_bindings_get_table(const char *name, int create)
{
 struct key_table table_find, *table;

 table_find.name = name;
 table = RB_FIND(key_tables, &key_tables, &table_find);
 if (table != ((void*)0) || !create)
  return (table);

 table = xmalloc(sizeof *table);
 table->name = xstrdup(name);
 RB_INIT(&table->key_bindings);

 table->references = 1;
 RB_INSERT(key_tables, &key_tables, table);

 return (table);
}
