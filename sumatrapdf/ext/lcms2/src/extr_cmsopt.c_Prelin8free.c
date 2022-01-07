
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 int _cmsFree (int ,void*) ;

__attribute__((used)) static
void Prelin8free(cmsContext ContextID, void* ptr)
{
    _cmsFree(ContextID, ptr);
}
