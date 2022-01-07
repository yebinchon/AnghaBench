
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ barriers; } ;
typedef TYPE_1__ Barrier ;


 scalar_t__ BARRIER_WE_ABORTED ;

__attribute__((used)) static inline bool barrier_we_aborted(Barrier *b) {
        return b->barriers == BARRIER_WE_ABORTED;
}
