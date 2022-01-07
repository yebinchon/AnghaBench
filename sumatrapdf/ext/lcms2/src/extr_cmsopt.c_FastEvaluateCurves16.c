
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef size_t cmsUInt16Number ;
typedef int cmsContext ;
struct TYPE_2__ {size_t nCurves; size_t** Curves; } ;
typedef TYPE_1__ Curves16Data ;


 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
void FastEvaluateCurves16(cmsContext ContextID, register const cmsUInt16Number In[],
                          register cmsUInt16Number Out[],
                          register const void* D)
{
    Curves16Data* Data = (Curves16Data*) D;
    cmsUInt32Number i;
    cmsUNUSED_PARAMETER(ContextID);

    for (i=0; i < Data ->nCurves; i++) {
         Out[i] = Data -> Curves[i][In[i]];
    }
}
