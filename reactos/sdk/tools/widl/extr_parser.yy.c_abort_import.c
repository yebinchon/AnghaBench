
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int temp_name; } ;


 TYPE_1__* import_stack ;
 int import_stack_ptr ;
 int unlink (int ) ;

void abort_import(void)
{
 int ptr;

 for (ptr=0; ptr<import_stack_ptr; ptr++)
  unlink(import_stack[ptr].temp_name);
}
