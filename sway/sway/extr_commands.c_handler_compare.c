
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_handler {int command; } ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int handler_compare(const void *_a, const void *_b) {
 const struct cmd_handler *a = _a;
 const struct cmd_handler *b = _b;
 return strcasecmp(a->command, b->command);
}
