
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_handler {char* command; } ;


 struct cmd_handler* bsearch (struct cmd_handler*,struct cmd_handler*,size_t,int,int ) ;
 int handler_compare ;

struct cmd_handler *find_handler(char *line, struct cmd_handler *handlers,
  size_t handlers_size) {
 if (!handlers || !handlers_size) {
  return ((void*)0);
 }
 struct cmd_handler query = { .command = line };
 return bsearch(&query, handlers,
   handlers_size / sizeof(struct cmd_handler),
   sizeof(struct cmd_handler), handler_compare);
}
