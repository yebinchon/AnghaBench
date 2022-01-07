
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {int * value; int name; } ;
struct environ {int dummy; } ;


 int RB_INSERT (int ,struct environ*,struct environ_entry*) ;
 int environ ;
 struct environ_entry* environ_find (struct environ*,char const*) ;
 int free (int *) ;
 struct environ_entry* xmalloc (int) ;
 int xstrdup (char const*) ;

void
environ_clear(struct environ *env, const char *name)
{
 struct environ_entry *envent;

 if ((envent = environ_find(env, name)) != ((void*)0)) {
  free(envent->value);
  envent->value = ((void*)0);
 } else {
  envent = xmalloc(sizeof *envent);
  envent->name = xstrdup(name);
  envent->value = ((void*)0);
  RB_INSERT(environ, env, envent);
 }
}
