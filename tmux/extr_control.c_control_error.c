
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {struct client* client; } ;
struct client {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 int cmdq_guard (struct cmdq_item*,char*,int) ;
 int control_write (struct client*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static enum cmd_retval
control_error(struct cmdq_item *item, void *data)
{
 struct client *c = item->client;
 char *error = data;

 cmdq_guard(item, "begin", 1);
 control_write(c, "parse error: %s", error);
 cmdq_guard(item, "error", 1);

 free(error);
 return (CMD_RETURN_NORMAL);
}
