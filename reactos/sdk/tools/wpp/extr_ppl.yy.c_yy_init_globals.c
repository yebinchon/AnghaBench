
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * ppy_in ;
 int * ppy_out ;
 int * stdin ;
 int * stdout ;
 scalar_t__ yy_buffer_stack ;
 scalar_t__ yy_buffer_stack_max ;
 scalar_t__ yy_buffer_stack_top ;
 char* yy_c_buf_p ;
 scalar_t__ yy_init ;
 scalar_t__ yy_start ;
 int * yy_start_stack ;
 scalar_t__ yy_start_stack_depth ;
 scalar_t__ yy_start_stack_ptr ;

__attribute__((used)) static int yy_init_globals (void)
{




    (yy_buffer_stack) = 0;
    (yy_buffer_stack_top) = 0;
    (yy_buffer_stack_max) = 0;
    (yy_c_buf_p) = (char *) 0;
    (yy_init) = 0;
    (yy_start) = 0;

    (yy_start_stack_ptr) = 0;
    (yy_start_stack_depth) = 0;
    (yy_start_stack) = ((void*)0);






    ppy_in = (FILE *) 0;
    ppy_out = (FILE *) 0;





    return 0;
}
