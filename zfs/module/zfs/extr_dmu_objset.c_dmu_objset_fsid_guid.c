
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;


 int dsl_dataset_fsid_guid (int ) ;

uint64_t
dmu_objset_fsid_guid(objset_t *os)
{
 return (dsl_dataset_fsid_guid(os->os_dsl_dataset));
}
