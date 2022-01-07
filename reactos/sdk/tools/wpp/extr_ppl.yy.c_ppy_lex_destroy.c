
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int ppy__delete_buffer (scalar_t__) ;
 int ppy_free (int *) ;
 int ppy_pop_buffer_state () ;
 int * yy_buffer_stack ;
 int yy_init_globals () ;
 int * yy_start_stack ;

int ppy_lex_destroy (void)
{


 while(YY_CURRENT_BUFFER){
  ppy__delete_buffer(YY_CURRENT_BUFFER );
  YY_CURRENT_BUFFER_LVALUE = ((void*)0);
  ppy_pop_buffer_state();
 }


 ppy_free((yy_buffer_stack) );
 (yy_buffer_stack) = ((void*)0);


        ppy_free((yy_start_stack) );
        (yy_start_stack) = ((void*)0);



    yy_init_globals( );

    return 0;
}
