
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_1__ IInternetHostSecurityManager_iface; } ;
typedef TYPE_2__ HTMLDocumentNode ;


 int InternetHostSecurityManagerVtbl ;

void HTMLDocumentNode_SecMgr_Init(HTMLDocumentNode *This)
{
    This->IInternetHostSecurityManager_iface.lpVtbl = &InternetHostSecurityManagerVtbl;
}
