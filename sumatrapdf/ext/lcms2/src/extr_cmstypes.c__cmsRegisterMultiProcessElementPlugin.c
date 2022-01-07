
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;


 int MPEPlugin ;
 int RegisterTypesPlugin (int ,int *,int ) ;

cmsBool _cmsRegisterMultiProcessElementPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    return RegisterTypesPlugin(ContextID, Data,MPEPlugin);
}
