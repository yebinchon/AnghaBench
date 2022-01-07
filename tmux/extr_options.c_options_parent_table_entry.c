
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_table_entry {int dummy; } ;
struct options_entry {struct options_table_entry const* tableentry; } ;
struct options {int * parent; } ;


 int fatalx (char*,char const*) ;
 struct options_entry* options_get (int *,char const*) ;

__attribute__((used)) static const struct options_table_entry *
options_parent_table_entry(struct options *oo, const char *s)
{
 struct options_entry *o;

 if (oo->parent == ((void*)0))
  fatalx("no parent options for %s", s);
 o = options_get(oo->parent, s);
 if (o == ((void*)0))
  fatalx("%s not in parent options", s);
 return (o->tableentry);
}
