
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IInternetProtocolInfo_iface; } ;
typedef int REFIID ;
typedef int REFCLSID ;
typedef TYPE_1__ ProtocolFactory ;
typedef int HRESULT ;


 TYPE_1__ AboutProtocolFactory ;
 int CLASS_E_CLASSNOTAVAILABLE ;
 int CLSID_AboutProtocol ;
 int CLSID_JSProtocol ;
 int CLSID_ResProtocol ;
 int FIXME (char*,int ) ;
 int IInternetProtocolInfo_QueryInterface (int *,int ,void**) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 TYPE_1__ JSProtocolFactory ;
 TYPE_1__ ResProtocolFactory ;
 int debugstr_guid (int ) ;

HRESULT ProtocolFactory_Create(REFCLSID rclsid, REFIID riid, void **ppv)
{
    ProtocolFactory *cf = ((void*)0);

    if(IsEqualGUID(&CLSID_AboutProtocol, rclsid))
        cf = &AboutProtocolFactory;
    else if(IsEqualGUID(&CLSID_ResProtocol, rclsid))
        cf = &ResProtocolFactory;
    else if(IsEqualGUID(&CLSID_JSProtocol, rclsid))
        cf = &JSProtocolFactory;

    if(!cf) {
        FIXME("not implemented protocol %s\n", debugstr_guid(rclsid));
        return CLASS_E_CLASSNOTAVAILABLE;
    }

    return IInternetProtocolInfo_QueryInterface(&cf->IInternetProtocolInfo_iface, riid, ppv);
}
