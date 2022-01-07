
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsContext ;



__attribute__((used)) static
void FastEvaluateCurves(cmsContext ContextID, register const cmsUInt16Number In[],
                                     register cmsUInt16Number Out[],
                                     register const void* Data)
{
    Out[0] = In[0];
}
