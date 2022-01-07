
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int CAccPropServicesFactory ;
 int IClassFactory_QueryInterface (int *,int ,void**) ;

HRESULT get_accpropservices_factory(REFIID riid, void **ppv)
{
    return IClassFactory_QueryInterface(&CAccPropServicesFactory, riid, ppv);
}
