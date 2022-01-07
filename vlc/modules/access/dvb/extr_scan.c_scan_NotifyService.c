
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_cbdata; int (* pf_notify_service ) (TYPE_1__*,int ,TYPE_2__*,int ,int) ;} ;
typedef TYPE_1__ scan_t ;
struct TYPE_8__ {int stickyref; int type; } ;
typedef TYPE_2__ scan_service_t ;


 int scan_service_type_Supported (int ) ;
 int stub1 (TYPE_1__*,int ,TYPE_2__*,int ,int) ;

__attribute__((used)) static void scan_NotifyService( scan_t *p_scan, scan_service_t *p_service, bool b_updated )
{
    if( !p_scan->pf_notify_service || !scan_service_type_Supported( p_service->type ) )
        return;
    p_service->stickyref = p_scan->pf_notify_service( p_scan, p_scan->p_cbdata,
                                                      p_service, p_service->stickyref,
                                                      b_updated );
}
