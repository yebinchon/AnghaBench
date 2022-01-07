
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct options_table_entry {int scope; int flags; int * name; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct options {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int args; int * entry; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 int OPTIONS_TABLE_IS_HOOK ;
 int args_has (int ,char) ;
 int cmd_show_hooks_entry ;
 int cmd_show_options_print (struct cmd*,struct cmdq_item*,struct options_entry*,int,int) ;
 int cmdq_print (struct cmdq_item*,char*,char const*) ;
 struct options_array_item* options_array_first (struct options_entry*) ;
 int options_array_item_index (struct options_array_item*) ;
 struct options_array_item* options_array_next (struct options_array_item*) ;
 struct options_entry* options_first (struct options*) ;
 struct options_entry* options_get (struct options*,int *) ;
 struct options_entry* options_get_only (struct options*,int *) ;
 int options_isarray (struct options_entry*) ;
 char* options_name (struct options_entry*) ;
 struct options_entry* options_next (struct options_entry*) ;
 struct options_table_entry* options_table ;
 int * options_table_entry (struct options_entry*) ;

__attribute__((used)) static enum cmd_retval
cmd_show_options_all(struct cmd *self, struct cmdq_item *item, int scope,
    struct options *oo)
{
 const struct options_table_entry *oe;
 struct options_entry *o;
 struct options_array_item *a;
 const char *name;
 u_int idx;
 int parent;

 o = options_first(oo);
 while (o != ((void*)0)) {
  if (options_table_entry(o) == ((void*)0))
   cmd_show_options_print(self, item, o, -1, 0);
  o = options_next(o);
 }
 for (oe = options_table; oe->name != ((void*)0); oe++) {
  if (~oe->scope & scope)
   continue;

  if ((self->entry != &cmd_show_hooks_entry &&
      !args_has(self->args, 'H') &&
      oe != ((void*)0) &&
      (oe->flags & OPTIONS_TABLE_IS_HOOK)) ||
      (self->entry == &cmd_show_hooks_entry &&
      (oe == ((void*)0) ||
      (~oe->flags & OPTIONS_TABLE_IS_HOOK))))
   continue;

  o = options_get_only(oo, oe->name);
  if (o == ((void*)0)) {
   if (!args_has(self->args, 'A'))
    continue;
   o = options_get(oo, oe->name);
   if (o == ((void*)0))
    continue;
   parent = 1;
  } else
   parent = 0;

  if (!options_isarray(o))
   cmd_show_options_print(self, item, o, -1, parent);
  else if ((a = options_array_first(o)) == ((void*)0)) {
   if (!args_has(self->args, 'v')) {
    name = options_name(o);
    if (parent)
     cmdq_print(item, "%s*", name);
    else
     cmdq_print(item, "%s", name);
   }
  } else {
   while (a != ((void*)0)) {
    idx = options_array_item_index(a);
    cmd_show_options_print(self, item, o, idx,
        parent);
    a = options_array_next(a);
   }
  }
 }
 return (CMD_RETURN_NORMAL);
}
