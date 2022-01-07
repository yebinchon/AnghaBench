
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check_items_order_data {int done_playing; } ;


 int sched_yield () ;

__attribute__((used)) static inline void wait_queued_items(struct check_items_order_data *check)
{

    while (!check->done_playing)
        sched_yield();
}
