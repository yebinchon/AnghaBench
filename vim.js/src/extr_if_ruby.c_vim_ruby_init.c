
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ruby_stack_start ;

void vim_ruby_init(void *stack_start)
{

    ruby_stack_start = stack_start;
}
