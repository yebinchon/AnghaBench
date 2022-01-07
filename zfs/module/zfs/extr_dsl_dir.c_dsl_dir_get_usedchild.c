
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dsl_dir_t ;
struct TYPE_2__ {scalar_t__* dd_used_breakdown; } ;


 size_t DD_USED_CHILD ;
 size_t DD_USED_CHILD_RSRV ;
 TYPE_1__* dsl_dir_phys (int *) ;

uint64_t
dsl_dir_get_usedchild(dsl_dir_t *dd)
{
 return (dsl_dir_phys(dd)->dd_used_breakdown[DD_USED_CHILD] +
     dsl_dir_phys(dd)->dd_used_breakdown[DD_USED_CHILD_RSRV]);
}
