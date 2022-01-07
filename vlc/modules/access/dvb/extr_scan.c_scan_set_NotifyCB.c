
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pf_notify_service; } ;
typedef TYPE_1__ scan_t ;
typedef int scan_service_notify_cb ;



void scan_set_NotifyCB( scan_t *p_scan, scan_service_notify_cb pf )
{
    p_scan->pf_notify_service = pf;
}
