
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {int name; struct options* owner; } ;
struct options {int tree; } ;


 int RB_INSERT (int ,int *,struct options_entry*) ;
 struct options_entry* options_get_only (struct options*,char const*) ;
 int options_remove (struct options_entry*) ;
 int options_tree ;
 struct options_entry* xcalloc (int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct options_entry *
options_add(struct options *oo, const char *name)
{
 struct options_entry *o;

 o = options_get_only(oo, name);
 if (o != ((void*)0))
  options_remove(o);

 o = xcalloc(1, sizeof *o);
 o->owner = oo;
 o->name = xstrdup(name);

 RB_INSERT(options_tree, &oo->tree, o);
 return (o);
}
