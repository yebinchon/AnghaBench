
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* err_str; } ;


 int N_SYNC_ERROR_ID ;
 int g_return_val_if_fail (int,char*) ;
 TYPE_1__* sync_error_info_tbl ;

const char *
sync_error_id_to_str (int error)
{
    g_return_val_if_fail ((error >= 0 && error < N_SYNC_ERROR_ID), "Unknown error");

    return sync_error_info_tbl[error].err_str;
}
