
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_handler {int dummy; } ;
struct TYPE_2__ {scalar_t__ active; scalar_t__ reading; } ;


 TYPE_1__* config ;
 struct cmd_handler* find_handler (char*,struct cmd_handler*,size_t) ;

__attribute__((used)) static struct cmd_handler *find_handler_ex(char *line,
  struct cmd_handler *config_handlers, size_t config_handlers_size,
  struct cmd_handler *command_handlers, size_t command_handlers_size,
  struct cmd_handler *handlers, size_t handlers_size) {
 struct cmd_handler *handler = ((void*)0);
 if (config->reading) {
  handler = find_handler(line, config_handlers, config_handlers_size);
 } else if (config->active) {
  handler = find_handler(line, command_handlers, command_handlers_size);
 }
 return handler ? handler : find_handler(line, handlers, handlers_size);
}
