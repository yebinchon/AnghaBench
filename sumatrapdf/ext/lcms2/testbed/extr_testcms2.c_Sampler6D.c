
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsContext ;


 int Fn8D1 (int const,int const,int const,int const,int const,int const,int ,int ,int) ;
 int Fn8D2 (int const,int const,int const,int const,int const,int const,int ,int ,int) ;
 int Fn8D3 (int const,int const,int const,int const,int const,int const,int ,int ,int) ;
 int cmsUNUSED_PARAMETER (void*) ;

__attribute__((used)) static
cmsInt32Number Sampler6D(cmsContext ContextID, register const cmsUInt16Number In[],
               register cmsUInt16Number Out[],
               register void * Cargo)
{

    Out[0] = Fn8D1(In[0], In[1], In[2], In[3], In[4], In[5], 0, 0, 6);
    Out[1] = Fn8D2(In[0], In[1], In[2], In[3], In[4], In[5], 0, 0, 6);
    Out[2] = Fn8D3(In[0], In[1], In[2], In[3], In[4], In[5], 0, 0, 6);

    return 1;

    cmsUNUSED_PARAMETER(Cargo);
}
