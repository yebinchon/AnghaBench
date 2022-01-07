
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pChannel; int name; } ;
typedef TYPE_1__ StdProxyImpl ;
typedef int LPVOID ;
typedef int LPRPCCHANNELBUFFER ;


 int TRACE (char*,TYPE_1__*,int *,int ) ;
 TYPE_1__* impl_from_proxy_obj (int ) ;

__attribute__((used)) static void StdProxy_GetChannel(LPVOID iface,
                                   LPRPCCHANNELBUFFER *ppChannel)
{
  StdProxyImpl *This = impl_from_proxy_obj( iface );
  TRACE("(%p)->GetChannel(%p) %s\n",This,ppChannel,This->name);

  *ppChannel = This->pChannel;
}
