
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_t ;
struct rconst {int * var; struct rconst* next; int name; } ;


 struct rconst** const_hash ;
 int error_loc (char*,char const*) ;
 size_t hash_ident (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

var_t *find_const(const char *name, int f)
{
  struct rconst *cur = const_hash[hash_ident(name)];
  while (cur && strcmp(cur->name, name))
    cur = cur->next;
  if (!cur) {
    if (f) error_loc("constant '%s' not found\n", name);
    return ((void*)0);
  }
  return cur->var;
}
