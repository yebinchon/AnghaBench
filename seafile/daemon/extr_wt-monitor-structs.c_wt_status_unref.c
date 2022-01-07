
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref_count; } ;
typedef TYPE_1__ WTStatus ;


 int free_wt_status (TYPE_1__*) ;

void
wt_status_unref (WTStatus *status)
{
    if (!status) return;

    if (--(status->ref_count) <= 0)
        free_wt_status (status);
}
