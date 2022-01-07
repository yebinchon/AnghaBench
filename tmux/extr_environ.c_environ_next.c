
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ_entry {int dummy; } ;


 struct environ_entry* RB_NEXT (int ,int ,struct environ_entry*) ;
 int env ;
 int environ ;

struct environ_entry *
environ_next(struct environ_entry *envent)
{
 return (RB_NEXT(environ, env, envent));
}
