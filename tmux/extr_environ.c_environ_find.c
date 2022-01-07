
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {char* name; } ;
struct environ {int dummy; } ;


 struct environ_entry* RB_FIND (int ,struct environ*,struct environ_entry*) ;
 int environ ;

struct environ_entry *
environ_find(struct environ *env, const char *name)
{
 struct environ_entry envent;

 envent.name = (char *) name;
 return (RB_FIND(environ, env, &envent));
}
