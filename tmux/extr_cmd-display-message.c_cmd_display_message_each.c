
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;


 int cmdq_print (struct cmdq_item*,char*,char const*,char const*) ;

__attribute__((used)) static void
cmd_display_message_each(const char *key, const char *value, void *arg)
{
 struct cmdq_item *item = arg;

 cmdq_print(item, "%s=%s", key, value);
}
