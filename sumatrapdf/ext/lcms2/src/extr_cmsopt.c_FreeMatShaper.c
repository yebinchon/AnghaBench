
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 int _cmsFree (int ,void*) ;

__attribute__((used)) static
void FreeMatShaper(cmsContext ContextID, void* Data)
{
    if (Data != ((void*)0)) _cmsFree(ContextID, Data);
}
