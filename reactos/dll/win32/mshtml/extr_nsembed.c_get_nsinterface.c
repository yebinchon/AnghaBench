
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIInterfaceRequestor ;
typedef int REFIID ;


 int IID_nsIInterfaceRequestor ;
 scalar_t__ NS_FAILED (int ) ;
 int nsIInterfaceRequestor_GetInterface (int *,int ,void**) ;
 int nsIInterfaceRequestor_Release (int *) ;
 int nsISupports_QueryInterface (int *,int *,void**) ;

nsresult get_nsinterface(nsISupports *iface, REFIID riid, void **ppv)
{
    nsIInterfaceRequestor *iface_req;
    nsresult nsres;

    nsres = nsISupports_QueryInterface(iface, &IID_nsIInterfaceRequestor, (void**)&iface_req);
    if(NS_FAILED(nsres))
        return nsres;

    nsres = nsIInterfaceRequestor_GetInterface(iface_req, riid, ppv);
    nsIInterfaceRequestor_Release(iface_req);

    return nsres;
}
