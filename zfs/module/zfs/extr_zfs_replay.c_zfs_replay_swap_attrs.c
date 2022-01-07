
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int lr_attr_masksize; } ;
typedef TYPE_1__ lr_attr_t ;
typedef scalar_t__ caddr_t ;


 int byteswap_uint32_array (TYPE_1__*,int) ;
 int byteswap_uint64_array (scalar_t__,int) ;

__attribute__((used)) static void
zfs_replay_swap_attrs(lr_attr_t *lrattr)
{

 byteswap_uint32_array(lrattr, sizeof (*lrattr));

 byteswap_uint32_array(lrattr + 1, (lrattr->lr_attr_masksize - 1) *
     sizeof (uint32_t));

 byteswap_uint64_array((caddr_t)(lrattr + 1) + (sizeof (uint32_t) *
     (lrattr->lr_attr_masksize - 1)), 3 * sizeof (uint64_t));
}
