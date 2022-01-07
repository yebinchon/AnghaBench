
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARIANT ;
typedef scalar_t__ ULONG ;
struct TYPE_5__ {int fFeatures; scalar_t__ pvData; scalar_t__ cbElements; } ;
typedef TYPE_1__ SAFEARRAY ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ LPUNKNOWN ;
typedef int IRecordInfo ;
typedef int HRESULT ;
typedef int BSTR ;


 int E_UNEXPECTED ;
 int FADF_BSTR ;
 int FADF_DATADELETED ;
 int FADF_DISPATCH ;
 int FADF_RECORD ;
 int FADF_UNKNOWN ;
 int FADF_VARIANT ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IRecordInfo_RecordClear (int *,scalar_t__) ;
 int IRecordInfo_Release (int *) ;
 int IUnknown_Release (scalar_t__) ;
 scalar_t__ SAFEARRAY_GetCellCount (TYPE_1__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SafeArrayGetRecordInfo (TYPE_1__*,int **) ;
 int SysFreeString (int ) ;
 int VariantClear (int *) ;

__attribute__((used)) static HRESULT SAFEARRAY_DestroyData(SAFEARRAY *psa, ULONG ulStartCell)
{
  if (psa->pvData && !(psa->fFeatures & FADF_DATADELETED))
  {
    ULONG ulCellCount = SAFEARRAY_GetCellCount(psa);

    if (ulStartCell > ulCellCount) {
      FIXME("unexpected ulCellCount %d, start %d\n",ulCellCount,ulStartCell);
      return E_UNEXPECTED;
    }

    ulCellCount -= ulStartCell;

    if (psa->fFeatures & (FADF_UNKNOWN|FADF_DISPATCH))
    {
      LPUNKNOWN *lpUnknown = (LPUNKNOWN *)psa->pvData + ulStartCell;

      while(ulCellCount--)
      {
        if (*lpUnknown)
          IUnknown_Release(*lpUnknown);
        lpUnknown++;
      }
    }
    else if (psa->fFeatures & FADF_RECORD)
    {
      IRecordInfo *lpRecInfo;

      if (SUCCEEDED(SafeArrayGetRecordInfo(psa, &lpRecInfo)))
      {
        PBYTE pRecordData = psa->pvData;
        while(ulCellCount--)
        {
          IRecordInfo_RecordClear(lpRecInfo, pRecordData);
          pRecordData += psa->cbElements;
        }
        IRecordInfo_Release(lpRecInfo);
      }
    }
    else if (psa->fFeatures & FADF_BSTR)
    {
      BSTR* lpBstr = (BSTR*)psa->pvData + ulStartCell;

      while(ulCellCount--)
      {
        SysFreeString(*lpBstr);
        lpBstr++;
      }
    }
    else if (psa->fFeatures & FADF_VARIANT)
    {
      VARIANT* lpVariant = (VARIANT*)psa->pvData + ulStartCell;

      while(ulCellCount--)
      {
        HRESULT hRet = VariantClear(lpVariant);

        if (FAILED(hRet)) FIXME("VariantClear of element failed!\n");
        lpVariant++;
      }
    }
  }
  return S_OK;
}
