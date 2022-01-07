
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__** pProxyVtblList; } ;
struct TYPE_4__ {int const* pStublessProxyInfo; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef int MIDL_STUBLESS_PROXY_INFO ;


 TYPE_3__ ndr_types_ProxyFileInfo ;

__attribute__((used)) static const MIDL_STUBLESS_PROXY_INFO *get_ndr_types_proxy_info(void)
{
    return ndr_types_ProxyFileInfo.pProxyVtblList[0]->header.pStublessProxyInfo;
}
