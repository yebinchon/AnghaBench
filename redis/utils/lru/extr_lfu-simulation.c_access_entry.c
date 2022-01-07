
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int hits; int counter; } ;


 int log_incr (int ) ;

void access_entry(struct entry *e) {
    e->counter = log_incr(e->counter);
    e->hits++;
}
