
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIContentSerializer ;
typedef int nsAString ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 int FALSE ;
 int IID_nsIContentSerializer ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_HTMLSERIALIZER_CONTRACTID ;
 scalar_t__ SUCCEEDED (int ) ;
 int nsIComponentManager_CreateInstanceByContractID (int ,int ,int *,int *,void**) ;
 int nsIContentSerializer_Flush (int *,int *) ;
 int nsIContentSerializer_Init (int *,int ,int,int *,int ,int ) ;
 int nsIContentSerializer_Release (int *) ;
 int nsnode_to_nsstring_rec (int *,int *,int *) ;
 int pCompMgr ;

HRESULT nsnode_to_nsstring(nsIDOMNode *nsnode, nsAString *str)
{
    nsIContentSerializer *serializer;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIComponentManager_CreateInstanceByContractID(pCompMgr,
            NS_HTMLSERIALIZER_CONTRACTID, ((void*)0), &IID_nsIContentSerializer,
            (void**)&serializer);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIContentSerializer: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIContentSerializer_Init(serializer, 0, 100, ((void*)0), FALSE, FALSE );
    if(NS_FAILED(nsres))
        ERR("Init failed: %08x\n", nsres);

    hres = nsnode_to_nsstring_rec(serializer, nsnode, str);
    if(SUCCEEDED(hres)) {
        nsres = nsIContentSerializer_Flush(serializer, str);
        if(NS_FAILED(nsres))
            ERR("Flush failed: %08x\n", nsres);
    }

    nsIContentSerializer_Release(serializer);
    return hres;
}
