
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;


 int dsl_dataset_snap_lookup (int ,char const*,int *) ;

int
dmu_snapshot_lookup(objset_t *os, const char *name, uint64_t *value)
{
 return (dsl_dataset_snap_lookup(os->os_dsl_dataset, name, value));
}
