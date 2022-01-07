
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {int dummy; } ;
struct options {struct options* parent; } ;


 struct options_entry* options_get_only (struct options*,char const*) ;

struct options_entry *
options_get(struct options *oo, const char *name)
{
 struct options_entry *o;

 o = options_get_only(oo, name);
 while (o == ((void*)0)) {
  oo = oo->parent;
  if (oo == ((void*)0))
   break;
  o = options_get_only(oo, name);
 }
 return (o);
}
