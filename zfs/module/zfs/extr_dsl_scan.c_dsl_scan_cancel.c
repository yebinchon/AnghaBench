
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_scan_cancel_check ;
 int dsl_scan_cancel_sync ;
 int dsl_sync_task (int ,int ,int ,int *,int,int ) ;
 int spa_name (int ) ;

int
dsl_scan_cancel(dsl_pool_t *dp)
{
 return (dsl_sync_task(spa_name(dp->dp_spa), dsl_scan_cancel_check,
     dsl_scan_cancel_sync, ((void*)0), 3, ZFS_SPACE_CHECK_RESERVED));
}
