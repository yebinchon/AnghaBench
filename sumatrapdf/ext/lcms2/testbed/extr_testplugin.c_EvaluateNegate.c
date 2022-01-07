
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsStage ;
typedef scalar_t__ cmsFloat32Number ;
typedef int cmsContext ;



__attribute__((used)) static
void EvaluateNegate(cmsContext ContextID, const cmsFloat32Number In[],
                     cmsFloat32Number Out[],
                     const cmsStage *mpe)
{
    Out[0] = 1.0f - In[0];
    Out[1] = 1.0f - In[1];
    Out[2] = 1.0f - In[2];
}
