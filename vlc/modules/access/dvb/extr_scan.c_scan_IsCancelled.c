
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_dialog_id; int p_obj; } ;
typedef TYPE_1__ scan_t ;


 int vlc_dialog_is_cancelled (int ,int *) ;

bool scan_IsCancelled( scan_t *p_scan )
{
    if( p_scan->p_dialog_id == ((void*)0) )
        return 0;
    return vlc_dialog_is_cancelled( p_scan->p_obj, p_scan->p_dialog_id );
}
