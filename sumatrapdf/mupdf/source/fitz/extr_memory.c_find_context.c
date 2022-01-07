
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user; int (* unlock ) (int ,int ) ;int (* lock ) (int ,int ) ;} ;
struct TYPE_6__ {TYPE_1__ locks; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_ALLOC ;
 int FZ_LOCK_DEBUG_CONTEXT_MAX ;
 int atexit (int ) ;
 int dump_lock_times ;
 int fz_debug_locking_inited ;
 TYPE_2__** fz_lock_debug_contexts ;
 int fz_lock_program_start ;
 int ms_clock () ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int find_context(fz_context *ctx)
{
 int i;

 for (i = 0; i < FZ_LOCK_DEBUG_CONTEXT_MAX; i++)
 {
  if (fz_lock_debug_contexts[i] == ctx)
   return i;
  if (fz_lock_debug_contexts[i] == ((void*)0))
  {
   int gottit = 0;





   ctx->locks.lock(ctx->locks.user, FZ_LOCK_ALLOC);


   if (fz_lock_debug_contexts[i] == ((void*)0))
   {
    gottit = 1;
    fz_lock_debug_contexts[i] = ctx;
   }
   ctx->locks.unlock(ctx->locks.user, FZ_LOCK_ALLOC);
   if (gottit)
    return i;
  }
 }
 return -1;
}
