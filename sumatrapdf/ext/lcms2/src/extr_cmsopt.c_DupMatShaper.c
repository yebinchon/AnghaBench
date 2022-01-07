
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;
typedef int MatShaper8Data ;


 void* _cmsDupMem (int ,void const*,int) ;

__attribute__((used)) static
void* DupMatShaper(cmsContext ContextID, const void* Data)
{
    return _cmsDupMem(ContextID, Data, sizeof(MatShaper8Data));
}
