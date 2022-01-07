
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int nstime_t ;
struct TYPE_6__ {int epoch; int const interval; } ;
typedef TYPE_1__ arena_decay_t ;


 int arena_decay_backlog_update (TYPE_1__*,scalar_t__,size_t) ;
 int arena_decay_deadline_init (TYPE_1__*) ;
 int arena_decay_deadline_reached (TYPE_1__*,int const*) ;
 int assert (int) ;
 int nstime_add (int *,int *) ;
 int nstime_copy (int *,int const*) ;
 scalar_t__ nstime_divide (int *,int const*) ;
 int nstime_imultiply (int *,scalar_t__) ;
 int nstime_subtract (int *,int *) ;

__attribute__((used)) static void
arena_decay_epoch_advance_helper(arena_decay_t *decay, const nstime_t *time,
    size_t current_npages) {
 assert(arena_decay_deadline_reached(decay, time));

 nstime_t delta;
 nstime_copy(&delta, time);
 nstime_subtract(&delta, &decay->epoch);

 uint64_t nadvance_u64 = nstime_divide(&delta, &decay->interval);
 assert(nadvance_u64 > 0);


 nstime_copy(&delta, &decay->interval);
 nstime_imultiply(&delta, nadvance_u64);
 nstime_add(&decay->epoch, &delta);


 arena_decay_deadline_init(decay);


 arena_decay_backlog_update(decay, nadvance_u64, current_npages);
}
