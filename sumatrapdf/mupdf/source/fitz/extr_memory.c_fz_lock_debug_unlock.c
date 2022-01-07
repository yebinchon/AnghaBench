
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lock; } ;
struct TYPE_6__ {TYPE_1__ locks; } ;
typedef TYPE_2__ fz_context ;


 int find_context (TYPE_2__*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ fz_lock_default ;
 scalar_t__** fz_lock_taken ;
 int ** fz_lock_time ;
 scalar_t__** fz_locks_debug ;
 scalar_t__ ms_clock () ;
 int stderr ;

void fz_lock_debug_unlock(fz_context *ctx, int lock)
{
 int idx;

 if (ctx->locks.lock != fz_lock_default)
  return;

 idx = find_context(ctx);
 if (idx < 0)
  return;

 if (fz_locks_debug[idx][lock] == 0)
 {
  fprintf(stderr, "Attempt to release lock %d when not held!\n", lock);
 }
 fz_locks_debug[idx][lock] = 0;



}
