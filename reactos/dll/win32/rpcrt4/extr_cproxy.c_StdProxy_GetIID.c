
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * piid; int name; } ;
typedef TYPE_1__ StdProxyImpl ;
typedef int LPVOID ;
typedef int IID ;


 int TRACE (char*,TYPE_1__*,int const**,int ) ;
 TYPE_1__* impl_from_proxy_obj (int ) ;

__attribute__((used)) static void StdProxy_GetIID(LPVOID iface,
                               const IID **ppiid)
{
  StdProxyImpl *This = impl_from_proxy_obj( iface );
  TRACE("(%p)->GetIID(%p) %s\n",This,ppiid,This->name);

  *ppiid = This->piid;
}
