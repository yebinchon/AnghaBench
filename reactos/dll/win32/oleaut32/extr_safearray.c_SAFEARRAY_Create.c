
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VARTYPE ;
typedef scalar_t__ ULONG ;
typedef unsigned int UINT ;
struct TYPE_6__ {scalar_t__ cbElements; scalar_t__ rgsabound; int fFeatures; } ;
typedef int SAFEARRAYBOUND ;
typedef TYPE_1__ SAFEARRAY ;


 int FADF_BSTR ;
 int FADF_DISPATCH ;
 int FADF_UNKNOWN ;
 int FADF_VARIANT ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SafeArrayAllocData (TYPE_1__*) ;
 int SafeArrayAllocDescriptorEx (int,unsigned int,TYPE_1__**) ;
 int SafeArrayDestroyDescriptor (TYPE_1__*) ;




 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static SAFEARRAY* SAFEARRAY_Create(VARTYPE vt, UINT cDims, const SAFEARRAYBOUND *rgsabound, ULONG ulSize)
{
  SAFEARRAY *psa = ((void*)0);
  unsigned int i;

  if (!rgsabound)
    return ((void*)0);

  if (SUCCEEDED(SafeArrayAllocDescriptorEx(vt, cDims, &psa)))
  {
    switch (vt)
    {
      case 131: psa->fFeatures |= FADF_BSTR; break;
      case 129: psa->fFeatures |= FADF_UNKNOWN; break;
      case 130: psa->fFeatures |= FADF_DISPATCH; break;
      case 128: psa->fFeatures |= FADF_VARIANT; break;
    }

    for (i = 0; i < cDims; i++)
      memcpy(psa->rgsabound + i, rgsabound + cDims - 1 - i, sizeof(SAFEARRAYBOUND));

    if (ulSize)
      psa->cbElements = ulSize;

    if (!psa->cbElements || FAILED(SafeArrayAllocData(psa)))
    {
      SafeArrayDestroyDescriptor(psa);
      psa = ((void*)0);
    }
  }
  return psa;
}
