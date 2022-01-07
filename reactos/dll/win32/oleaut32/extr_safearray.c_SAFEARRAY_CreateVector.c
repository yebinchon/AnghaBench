
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VARTYPE ;
typedef int ULONG ;
struct TYPE_7__ {int cDims; int cbElements; int fFeatures; TYPE_1__* rgsabound; struct TYPE_7__* pvData; } ;
struct TYPE_6__ {int cElements; int lLbound; } ;
typedef TYPE_2__ SAFEARRAY ;
typedef int LONG ;


 int FADF_BSTR ;
 int FADF_CREATEVECTOR ;
 int FADF_DISPATCH ;
 int FADF_UNKNOWN ;
 int FADF_VARIANT ;
 int SAFEARRAY_AllocDescriptor (int,TYPE_2__**) ;
 int SAFEARRAY_SetFeatures (int,TYPE_2__*) ;
 scalar_t__ SUCCEEDED (int ) ;


 int VT_RECORD ;



__attribute__((used)) static SAFEARRAY* SAFEARRAY_CreateVector(VARTYPE vt, LONG lLbound, ULONG cElements, ULONG ulSize)
{
  SAFEARRAY *psa = ((void*)0);

  if (ulSize || (vt == VT_RECORD))
  {

    if (SUCCEEDED(SAFEARRAY_AllocDescriptor(sizeof(SAFEARRAY) + ulSize * cElements, &psa)))
    {
      SAFEARRAY_SetFeatures(vt, psa);

      psa->cDims = 1;
      psa->fFeatures |= FADF_CREATEVECTOR;
      psa->pvData = &psa[1];
      psa->cbElements = ulSize;
      psa->rgsabound[0].cElements = cElements;
      psa->rgsabound[0].lLbound = lLbound;

      switch (vt)
      {
        case 131: psa->fFeatures |= FADF_BSTR; break;
        case 129: psa->fFeatures |= FADF_UNKNOWN; break;
        case 130: psa->fFeatures |= FADF_DISPATCH; break;
        case 128: psa->fFeatures |= FADF_VARIANT; break;
      }
    }
  }
  return psa;
}
