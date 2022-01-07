
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIWritableVariant ;


 int ERR (char*) ;
 int IID_nsIWritableVariant ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_VARIANT_CONTRACTID ;
 int nsIComponentManager_CreateInstanceByContractID (int ,int ,int *,int *,void**) ;
 int pCompMgr ;

nsIWritableVariant *create_nsvariant(void)
{
    nsIWritableVariant *ret = ((void*)0);
    nsresult nsres;

    if(!pCompMgr)
        return ((void*)0);

    nsres = nsIComponentManager_CreateInstanceByContractID(pCompMgr,
            NS_VARIANT_CONTRACTID, ((void*)0), &IID_nsIWritableVariant, (void**)&ret);
    if(NS_FAILED(nsres))
        ERR("Could not get nsIVariant\n");

    return ret;
}
