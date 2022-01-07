
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsICommandParams ;


 int ERR (char*) ;
 int IID_nsICommandParams ;
 int NS_COMMANDPARAMS_CONTRACTID ;
 scalar_t__ NS_FAILED (int ) ;
 int nsIComponentManager_CreateInstanceByContractID (int ,int ,int *,int *,void**) ;
 int pCompMgr ;

nsICommandParams *create_nscommand_params(void)
{
    nsICommandParams *ret = ((void*)0);
    nsresult nsres;

    if(!pCompMgr)
        return ((void*)0);

    nsres = nsIComponentManager_CreateInstanceByContractID(pCompMgr,
            NS_COMMANDPARAMS_CONTRACTID, ((void*)0), &IID_nsICommandParams,
            (void**)&ret);
    if(NS_FAILED(nsres))
        ERR("Could not get nsICommandParams\n");

    return ret;
}
