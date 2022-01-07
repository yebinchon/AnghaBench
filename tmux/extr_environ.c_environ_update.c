
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union options_value {int string; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct options {int dummy; } ;
struct environ_entry {int value; int name; } ;
struct environ {int dummy; } ;


 int environ_clear (struct environ*,int ) ;
 struct environ_entry* environ_find (struct environ*,int ) ;
 int environ_set (struct environ*,int ,char*,int ) ;
 struct options_array_item* options_array_first (struct options_entry*) ;
 union options_value* options_array_item_value (struct options_array_item*) ;
 struct options_array_item* options_array_next (struct options_array_item*) ;
 struct options_entry* options_get (struct options*,char*) ;

void
environ_update(struct options *oo, struct environ *src, struct environ *dst)
{
 struct environ_entry *envent;
 struct options_entry *o;
 struct options_array_item *a;
 union options_value *ov;

 o = options_get(oo, "update-environment");
 if (o == ((void*)0))
  return;
 a = options_array_first(o);
 while (a != ((void*)0)) {
  ov = options_array_item_value(a);
  if ((envent = environ_find(src, ov->string)) == ((void*)0))
   environ_clear(dst, ov->string);
  else
   environ_set(dst, envent->name, "%s", envent->value);
  a = options_array_next(a);
 }
}
