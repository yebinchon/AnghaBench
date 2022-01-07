
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ICLRMetaHost_iface; } ;
typedef int REFIID ;
typedef int HRESULT ;


 TYPE_1__ GlobalCLRMetaHost ;
 int ICLRMetaHost_QueryInterface (int *,int ,void**) ;

HRESULT CLRMetaHost_CreateInstance(REFIID riid, void **ppobj)
{
    return ICLRMetaHost_QueryInterface(&GlobalCLRMetaHost.ICLRMetaHost_iface, riid, ppobj);
}
