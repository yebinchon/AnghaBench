
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCHED_RR ;
 int sched_get_priority_max (int ) ;

__attribute__((used)) static inline bool sched_priority_is_valid(int i) {
        return i >= 0 && i <= sched_get_priority_max(SCHED_RR);
}
