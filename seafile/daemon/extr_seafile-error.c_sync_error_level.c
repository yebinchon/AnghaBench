
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_level; } ;


 int N_SYNC_ERROR_ID ;
 int g_return_val_if_fail (int,int) ;
 TYPE_1__* sync_error_info_tbl ;

int
sync_error_level (int error)
{
    g_return_val_if_fail ((error >= 0 && error < N_SYNC_ERROR_ID), -1);

    return sync_error_info_tbl[error].error_level;
}
