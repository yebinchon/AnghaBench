
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {struct environ_entry* value; struct environ_entry* name; } ;
struct environ {int dummy; } ;


 int RB_REMOVE (int ,struct environ*,struct environ_entry*) ;
 int environ ;
 struct environ_entry* environ_find (struct environ*,char const*) ;
 int free (struct environ_entry*) ;

void
environ_unset(struct environ *env, const char *name)
{
 struct environ_entry *envent;

 if ((envent = environ_find(env, name)) == ((void*)0))
  return;
 RB_REMOVE(environ, env, envent);
 free(envent->name);
 free(envent->value);
 free(envent);
}
