
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_5__ {int yy_n_chars; int * yy_buf_pos; } ;


 TYPE_1__* YY_CURRENT_BUFFER ;
 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 int ppy__load_buffer_state () ;
 int ppy_ensure_buffer_stack () ;
 int * yy_c_buf_p ;
 int yy_did_buffer_switch_on_eof ;
 int yy_hold_char ;
 int yy_n_chars ;

void ppy__switch_to_buffer (YY_BUFFER_STATE new_buffer )
{






 ppy_ensure_buffer_stack ();
 if ( YY_CURRENT_BUFFER == new_buffer )
  return;

 if ( YY_CURRENT_BUFFER )
  {

  *(yy_c_buf_p) = (yy_hold_char);
  YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
  YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
  }

 YY_CURRENT_BUFFER_LVALUE = new_buffer;
 ppy__load_buffer_state( );






 (yy_did_buffer_switch_on_eof) = 1;
}
