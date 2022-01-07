
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options_entry {char const* name; } ;
struct options {int tree; } ;


 struct options_entry* RB_FIND (int ,int *,struct options_entry*) ;
 int options_tree ;

struct options_entry *
options_get_only(struct options *oo, const char *name)
{
 struct options_entry o;

 o.name = name;
 return (RB_FIND(options_tree, &oo->tree, &o));
}
