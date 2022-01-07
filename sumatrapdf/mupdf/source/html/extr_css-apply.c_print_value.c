
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; struct TYPE_3__* next; struct TYPE_3__* args; } ;
typedef TYPE_1__ fz_css_value ;


 int printf (char*,...) ;

__attribute__((used)) static void print_value(fz_css_value *val)
{
 printf("%s", val->data);
 if (val->args)
 {
  printf("(");
  print_value(val->args);
  printf(")");
 }
 if (val->next)
 {
  printf(" ");
  print_value(val->next);
 }
}
