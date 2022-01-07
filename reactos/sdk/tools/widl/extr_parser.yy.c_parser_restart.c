
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int YY_CURRENT_BUFFER_LVALUE ;
 int parser__create_buffer (int ,int ) ;
 int parser__init_buffer (int ,int *) ;
 int parser__load_buffer_state () ;
 int parser_ensure_buffer_stack () ;
 int parser_in ;

void parser_restart (FILE * input_file )
{

 if ( ! YY_CURRENT_BUFFER ){
        parser_ensure_buffer_stack ();
  YY_CURRENT_BUFFER_LVALUE =
            parser__create_buffer(parser_in,YY_BUF_SIZE );
 }

 parser__init_buffer(YY_CURRENT_BUFFER,input_file );
 parser__load_buffer_state( );
}
