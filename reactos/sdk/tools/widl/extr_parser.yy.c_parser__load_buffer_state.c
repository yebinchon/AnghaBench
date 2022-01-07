
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int yy_input_file; int * yy_buf_pos; int yy_n_chars; } ;


 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 int parser_in ;
 int * yy_c_buf_p ;
 int yy_hold_char ;
 int yy_n_chars ;
 int * yytext_ptr ;

__attribute__((used)) static void parser__load_buffer_state (void)
{
     (yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
 (yytext_ptr) = (yy_c_buf_p) = YY_CURRENT_BUFFER_LVALUE->yy_buf_pos;
 parser_in = YY_CURRENT_BUFFER_LVALUE->yy_input_file;
 (yy_hold_char) = *(yy_c_buf_p);
}
