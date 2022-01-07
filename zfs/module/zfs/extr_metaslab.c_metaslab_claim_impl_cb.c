
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vdev_t ;
typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ mcca_error; int mcca_txg; } ;
typedef TYPE_1__ metaslab_claim_cb_arg_t ;


 scalar_t__ metaslab_claim_concrete (int *,int ,int ,int ) ;

__attribute__((used)) static void
metaslab_claim_impl_cb(uint64_t inner_offset, vdev_t *vd, uint64_t offset,
    uint64_t size, void *arg)
{
 metaslab_claim_cb_arg_t *mcca_arg = arg;

 if (mcca_arg->mcca_error == 0) {
  mcca_arg->mcca_error = metaslab_claim_concrete(vd, offset,
      size, mcca_arg->mcca_txg);
 }
}
