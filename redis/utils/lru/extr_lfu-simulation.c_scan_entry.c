
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct entry {int counter; int decrtime; } ;


 int COUNTER_INIT_VAL ;
 scalar_t__ decr_every ;
 scalar_t__ minutes_diff (int ,int ) ;
 int time (int *) ;
 int to_16bit_minutes (int ) ;

uint8_t scan_entry(struct entry *e) {
    if (minutes_diff(to_16bit_minutes(time(((void*)0))),e->decrtime)
        >= decr_every)
    {
        if (e->counter) {
            if (e->counter > COUNTER_INIT_VAL*2) {
                e->counter /= 2;
            } else {
                e->counter--;
            }
        }
        e->decrtime = to_16bit_minutes(time(((void*)0)));
    }
    return e->counter;
}
