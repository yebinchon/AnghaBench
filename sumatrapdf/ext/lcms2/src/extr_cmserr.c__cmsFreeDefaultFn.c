
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 int cmsUNUSED_PARAMETER (int ) ;
 int free (void*) ;

__attribute__((used)) static
void _cmsFreeDefaultFn(cmsContext ContextID, void *Ptr)
{



    if (Ptr) free(Ptr);

    cmsUNUSED_PARAMETER(ContextID);
}
