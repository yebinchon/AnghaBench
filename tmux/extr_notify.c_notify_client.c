
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_find_state {int dummy; } ;
struct client {int dummy; } ;


 int cmd_find_from_client (struct cmd_find_state*,struct client*,int ) ;
 int notify_add (char const*,struct cmd_find_state*,struct client*,int *,int *,int *) ;

void
notify_client(const char *name, struct client *c)
{
 struct cmd_find_state fs;

 cmd_find_from_client(&fs, c, 0);
 notify_add(name, &fs, c, ((void*)0), ((void*)0), ((void*)0));
}
