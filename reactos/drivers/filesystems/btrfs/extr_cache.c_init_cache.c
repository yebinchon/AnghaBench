
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ReleaseFromReadAhead; int AcquireForReadAhead; int ReleaseFromLazyWrite; int AcquireForLazyWrite; } ;


 int acquire_for_lazy_write ;
 int acquire_for_read_ahead ;
 TYPE_1__ cache_callbacks ;
 int release_from_lazy_write ;
 int release_from_read_ahead ;

void init_cache() {
    cache_callbacks.AcquireForLazyWrite = acquire_for_lazy_write;
    cache_callbacks.ReleaseFromLazyWrite = release_from_lazy_write;
    cache_callbacks.AcquireForReadAhead = acquire_for_read_ahead;
    cache_callbacks.ReleaseFromReadAhead = release_from_read_ahead;
}
