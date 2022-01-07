
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* end; void* ptr; } ;
typedef TYPE_1__ ZSTD_stack ;
struct TYPE_6__ {void* member_2; int * member_1; int * member_0; } ;
typedef TYPE_2__ ZSTD_customMem ;


 void* ZSTD_PTR_ALIGN (void*) ;
 int * ZSTD_stackAlloc ;
 int * ZSTD_stackFree ;
 int stack_push (TYPE_1__*,int) ;

ZSTD_customMem ZSTD_initStack(void *workspace, size_t workspaceSize)
{
 ZSTD_customMem stackMem = {ZSTD_stackAlloc, ZSTD_stackFree, workspace};
 ZSTD_stack *stack = (ZSTD_stack *)workspace;

 if (!workspace || workspaceSize < sizeof(ZSTD_stack) || workspace != ZSTD_PTR_ALIGN(workspace)) {
  ZSTD_customMem error = {((void*)0), ((void*)0), ((void*)0)};
  return error;
 }

 stack->ptr = workspace;
 stack->end = (char *)workspace + workspaceSize;
 stack_push(stack, sizeof(ZSTD_stack));
 return stackMem;
}
