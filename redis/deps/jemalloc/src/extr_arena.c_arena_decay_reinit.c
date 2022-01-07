
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int jitter_state; int backlog; scalar_t__ nunpurged; int epoch; int interval; } ;
typedef TYPE_1__ arena_decay_t ;


 int KQU (int) ;
 int SMOOTHSTEP_NSTEPS ;
 int arena_decay_deadline_init (TYPE_1__*) ;
 int arena_decay_ms_write (TYPE_1__*,scalar_t__) ;
 int memset (int ,int ,int) ;
 int nstime_idivide (int *,int) ;
 int nstime_init (int *,int) ;
 int nstime_update (int *) ;

__attribute__((used)) static void
arena_decay_reinit(arena_decay_t *decay, ssize_t decay_ms) {
 arena_decay_ms_write(decay, decay_ms);
 if (decay_ms > 0) {
  nstime_init(&decay->interval, (uint64_t)decay_ms *
      KQU(1000000));
  nstime_idivide(&decay->interval, SMOOTHSTEP_NSTEPS);
 }

 nstime_init(&decay->epoch, 0);
 nstime_update(&decay->epoch);
 decay->jitter_state = (uint64_t)(uintptr_t)decay;
 arena_decay_deadline_init(decay);
 decay->nunpurged = 0;
 memset(decay->backlog, 0, SMOOTHSTEP_NSTEPS * sizeof(size_t));
}
