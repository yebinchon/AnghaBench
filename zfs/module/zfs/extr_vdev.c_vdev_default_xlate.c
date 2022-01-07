
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_4__ {int rs_end; int rs_start; } ;
typedef TYPE_1__ range_seg64_t ;



void
vdev_default_xlate(vdev_t *vd, const range_seg64_t *in, range_seg64_t *res)
{
 res->rs_start = in->rs_start;
 res->rs_end = in->rs_end;
}
