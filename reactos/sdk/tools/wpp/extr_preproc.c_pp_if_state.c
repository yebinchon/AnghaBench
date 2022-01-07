
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pp_if_state_t ;


 int * if_stack ;
 int if_stack_idx ;
 int if_true ;

pp_if_state_t pp_if_state(void)
{
 if(!if_stack_idx)
  return if_true;
 else
  return if_stack[if_stack_idx-1];
}
