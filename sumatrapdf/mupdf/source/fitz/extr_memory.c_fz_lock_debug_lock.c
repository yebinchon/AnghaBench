
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
 int fprintf (int ,char*,int,...) ;
 scalar_t__ fz_lock_default ;
 int ** fz_lock_taken ;
 int** fz_locks_debug ;
 int ms_clock () ;
 int stderr ;

void fz_lock_debug_lock(fz_context *ctx, int lock)
{
 int i, idx;

 if (ctx->locks.lock != fz_lock_default)
  return;

 idx = find_context(ctx);
 if (idx < 0)
  return;

 if (fz_locks_debug[idx][lock] != 0)
 {
  fprintf(stderr, "Attempt to take lock %d when held already!\n", lock);
 }
 for (i = lock-1; i >= 0; i--)
 {
  if (fz_locks_debug[idx][i] != 0)
  {
   fprintf(stderr, "Lock ordering violation: Attempt to take lock %d when %d held already!\n", lock, i);
  }
 }
 fz_locks_debug[idx][lock] = 1;



}
