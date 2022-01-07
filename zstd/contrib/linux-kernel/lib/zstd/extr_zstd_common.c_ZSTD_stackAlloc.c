
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_stack ;


 void* stack_push (int *,size_t) ;

void *ZSTD_stackAlloc(void *opaque, size_t size)
{
 ZSTD_stack *stack = (ZSTD_stack *)opaque;
 return stack_push(stack, size);
}
