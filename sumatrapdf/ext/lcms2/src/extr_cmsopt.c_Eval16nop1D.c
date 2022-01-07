
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_interp_struc {int dummy; } ;
typedef int cmsUInt16Number ;
typedef struct _cms_interp_struc const* cmsContext ;


 int cmsUNUSED_PARAMETER (struct _cms_interp_struc const*) ;

__attribute__((used)) static
void Eval16nop1D(cmsContext ContextID, register const cmsUInt16Number Input[],
                 register cmsUInt16Number Output[],
                 register const struct _cms_interp_struc* p)
{
    cmsUNUSED_PARAMETER(ContextID);
    Output[0] = Input[0];

    cmsUNUSED_PARAMETER(p);
}
