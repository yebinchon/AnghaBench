
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ VARTYPE ;
struct TYPE_5__ {void* fFeatures; } ;
typedef TYPE_1__ SAFEARRAY ;


 void* FADF_HAVEIID ;
 void* FADF_HAVEVARTYPE ;
 void* FADF_RECORD ;
 int IID_IDispatch ;
 int IID_IUnknown ;
 int SAFEARRAY_SetHiddenDWORD (TYPE_1__*,scalar_t__) ;
 int SafeArraySetIID (TYPE_1__*,int *) ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ VT_RECORD ;
 scalar_t__ VT_UNKNOWN ;

__attribute__((used)) static void SAFEARRAY_SetFeatures(VARTYPE vt, SAFEARRAY *psa)
{

  if (vt == VT_DISPATCH)
  {
    psa->fFeatures = FADF_HAVEIID;
    SafeArraySetIID(psa, &IID_IDispatch);
  }
  else if (vt == VT_UNKNOWN)
  {
    psa->fFeatures = FADF_HAVEIID;
    SafeArraySetIID(psa, &IID_IUnknown);
  }
  else if (vt == VT_RECORD)
    psa->fFeatures = FADF_RECORD;
  else
  {
    psa->fFeatures = FADF_HAVEVARTYPE;
    SAFEARRAY_SetHiddenDWORD(psa, vt);
  }
}
