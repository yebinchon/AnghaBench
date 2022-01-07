
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;
typedef int Prelin8Data ;


 void* _cmsDupMem (int ,void const*,int) ;

__attribute__((used)) static
void* Prelin8dup(cmsContext ContextID, const void* ptr)
{
    return _cmsDupMem(ContextID, ptr, sizeof(Prelin8Data));
}
