
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_SET (int,int ,int ,int ,int ,int ) ;
 int SCHED_BATCH ;
 int SCHED_FIFO ;
 int SCHED_IDLE ;
 int SCHED_OTHER ;
 int SCHED_RR ;

__attribute__((used)) static inline bool sched_policy_is_valid(int i) {
        return IN_SET(i, SCHED_OTHER, SCHED_BATCH, SCHED_IDLE, SCHED_FIFO, SCHED_RR);
}
