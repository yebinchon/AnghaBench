
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int barriers; } ;
typedef TYPE_1__ Barrier ;


 int BARRIER_THEY_ABORTED ;
 int BARRIER_WE_ABORTED ;
 int IN_SET (int ,int ,int ) ;

__attribute__((used)) static inline bool barrier_they_aborted(Barrier *b) {
        return IN_SET(b->barriers, BARRIER_THEY_ABORTED, BARRIER_WE_ABORTED);
}
