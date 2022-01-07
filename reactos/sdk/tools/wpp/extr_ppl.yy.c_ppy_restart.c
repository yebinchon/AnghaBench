
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int YY_BUF_SIZE ;
 int YY_CURRENT_BUFFER ;
 int YY_CURRENT_BUFFER_LVALUE ;
 int ppy__create_buffer (int ,int ) ;
 int ppy__init_buffer (int ,int *) ;
 int ppy__load_buffer_state () ;
 int ppy_ensure_buffer_stack () ;
 int ppy_in ;

void ppy_restart (FILE * input_file )
{

 if ( ! YY_CURRENT_BUFFER ){
        ppy_ensure_buffer_stack ();
  YY_CURRENT_BUFFER_LVALUE =
            ppy__create_buffer(ppy_in,YY_BUF_SIZE );
 }

 ppy__init_buffer(YY_CURRENT_BUFFER,input_file );
 ppy__load_buffer_state( );
}
