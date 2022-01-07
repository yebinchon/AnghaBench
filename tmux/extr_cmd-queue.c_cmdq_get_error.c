
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;


 int cmdq_error_callback ;
 struct cmdq_item* cmdq_get_callback (int ,int ) ;
 int xstrdup (char const*) ;

struct cmdq_item *
cmdq_get_error(const char *error)
{
 return (cmdq_get_callback(cmdq_error_callback, xstrdup(error)));
}
