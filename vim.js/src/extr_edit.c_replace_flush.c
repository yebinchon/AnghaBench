
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * replace_stack ;
 scalar_t__ replace_stack_len ;
 scalar_t__ replace_stack_nr ;
 int vim_free (int *) ;

__attribute__((used)) static void
replace_flush()
{
    vim_free(replace_stack);
    replace_stack = ((void*)0);
    replace_stack_len = 0;
    replace_stack_nr = 0;
}
