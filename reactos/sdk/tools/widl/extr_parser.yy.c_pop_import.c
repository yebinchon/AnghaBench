
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_number; int input_name; scalar_t__ temp_name; int state; } ;


 int YY_CURRENT_BUFFER ;
 int fclose (int ) ;
 int free (scalar_t__) ;
 TYPE_1__* import_stack ;
 int import_stack_ptr ;
 int input_name ;
 int line_number ;
 int parser__delete_buffer (int ) ;
 int parser__switch_to_buffer (int ) ;
 int parser_in ;
 scalar_t__ temp_name ;
 int unlink (scalar_t__) ;

void pop_import(void)
{
 int ptr = import_stack_ptr-1;

 fclose(parser_in);
 parser__delete_buffer(YY_CURRENT_BUFFER );
 parser__switch_to_buffer(import_stack[ptr].state );
 if (temp_name) {
  unlink(temp_name);
  free(temp_name);
 }
 temp_name = import_stack[ptr].temp_name;
 input_name = import_stack[ptr].input_name;
 line_number = import_stack[ptr].line_number;
 import_stack_ptr--;
}
