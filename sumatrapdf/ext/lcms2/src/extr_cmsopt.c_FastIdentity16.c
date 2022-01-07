
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_2__ {size_t InputChannels; } ;
typedef TYPE_1__ cmsPipeline ;
typedef int cmsContext ;


 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
void FastIdentity16(cmsContext ContextID, register const cmsUInt16Number In[],
                    register cmsUInt16Number Out[],
                    register const void* D)
{
    cmsPipeline* Lut = (cmsPipeline*) D;
    cmsUInt32Number i;
    cmsUNUSED_PARAMETER(ContextID);

    for (i=0; i < Lut ->InputChannels; i++) {
         Out[i] = In[i];
    }
}
