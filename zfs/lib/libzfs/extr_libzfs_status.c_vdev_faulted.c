
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ VDEV_STATE_FAULTED ;

__attribute__((used)) static int
vdev_faulted(uint64_t state, uint64_t aux, uint64_t errs)
{
 return (state == VDEV_STATE_FAULTED);
}
