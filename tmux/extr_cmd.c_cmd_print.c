
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd {TYPE_1__* entry; int args; } ;
struct TYPE_2__ {int name; } ;


 char* args_print (int ) ;
 int free (char*) ;
 int xasprintf (char**,char*,int ,char*) ;
 char* xstrdup (int ) ;

char *
cmd_print(struct cmd *cmd)
{
 char *out, *s;

 s = args_print(cmd->args);
 if (*s != '\0')
  xasprintf(&out, "%s %s", cmd->entry->name, s);
 else
  out = xstrdup(cmd->entry->name);
 free(s);

 return (out);
}
