
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int ppy__delete_buffer (scalar_t__) ;
 int ppy__load_buffer_state () ;
 scalar_t__ yy_buffer_stack_top ;
 int yy_did_buffer_switch_on_eof ;

void ppy_pop_buffer_state (void)
{
     if (!YY_CURRENT_BUFFER)
  return;

 ppy__delete_buffer(YY_CURRENT_BUFFER );
 YY_CURRENT_BUFFER_LVALUE = ((void*)0);
 if ((yy_buffer_stack_top) > 0)
  --(yy_buffer_stack_top);

 if (YY_CURRENT_BUFFER) {
  ppy__load_buffer_state( );
  (yy_did_buffer_switch_on_eof) = 1;
 }
}
