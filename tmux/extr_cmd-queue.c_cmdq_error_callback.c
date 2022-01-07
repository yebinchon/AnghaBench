
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 int cmdq_error (struct cmdq_item*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static enum cmd_retval
cmdq_error_callback(struct cmdq_item *item, void *data)
{
 char *error = data;

 cmdq_error(item, "%s", error);
 free(error);

 return (CMD_RETURN_NORMAL);
}
