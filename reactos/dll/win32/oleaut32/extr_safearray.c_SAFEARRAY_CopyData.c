
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int * VARIANT ;
typedef int ULONG ;
struct TYPE_11__ {int fFeatures; int cbElements; int ** pvData; } ;
typedef TYPE_1__ SAFEARRAY ;
typedef int IUnknown ;
typedef int IRecordInfo ;
typedef int HRESULT ;
typedef int GUID ;
typedef int * BYTE ;
typedef int * BSTR ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int FADF_BSTR ;
 int FADF_CREATEVECTOR ;
 int FADF_DATADELETED ;
 int FADF_DISPATCH ;
 int FADF_HAVEIID ;
 int FADF_HAVEVARTYPE ;
 int FADF_RECORD ;
 int FADF_UNKNOWN ;
 int FADF_VARIANT ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ,int) ;
 int IRecordInfo_RecordCopy (int *,int **,int **) ;
 int IRecordInfo_Release (int *) ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;
 int SAFEARRAY_GetCellCount (TYPE_1__*) ;
 int SAFEARRAY_GetHiddenDWORD (TYPE_1__*) ;
 int SAFEARRAY_SetHiddenDWORD (TYPE_1__*,int ) ;
 int S_OK ;
 int SafeArrayGetIID (TYPE_1__*,int *) ;
 int SafeArrayGetRecordInfo (TYPE_1__*,int **) ;
 int SafeArraySetIID (TYPE_1__*,int *) ;
 int SafeArraySetRecordInfo (TYPE_1__*,int *) ;
 int * SysAllocStringByteLen (char*,int ) ;
 int SysFreeString (int *) ;
 int SysStringByteLen (int *) ;
 int VariantCopy (int **,int **) ;
 int ignored_copy_features ;
 int memcpy (int **,int **,int) ;

__attribute__((used)) static HRESULT SAFEARRAY_CopyData(SAFEARRAY *psa, SAFEARRAY *dest)
{
  HRESULT hr = S_OK;

  if (!psa->pvData)
    return S_OK;

  if (!dest->pvData || psa->fFeatures & FADF_DATADELETED)
    return E_INVALIDARG;
  else
  {
    ULONG ulCellCount = SAFEARRAY_GetCellCount(psa);

    dest->fFeatures = (dest->fFeatures & FADF_CREATEVECTOR) | (psa->fFeatures & ~ignored_copy_features);

    if (psa->fFeatures & FADF_VARIANT)
    {
      VARIANT *src_var = psa->pvData;
      VARIANT *dest_var = dest->pvData;

      while(ulCellCount--)
      {
        HRESULT hRet;


        hRet = VariantCopy(dest_var, src_var);
        if (FAILED(hRet)) FIXME("VariantCopy failed with 0x%08x, element %u\n", hRet, ulCellCount);
        src_var++;
        dest_var++;
      }
    }
    else if (psa->fFeatures & FADF_BSTR)
    {
      BSTR *src_bstr = psa->pvData;
      BSTR *dest_bstr = dest->pvData;

      while(ulCellCount--)
      {
        SysFreeString(*dest_bstr);
        if (*src_bstr)
        {
          *dest_bstr = SysAllocStringByteLen((char*)*src_bstr, SysStringByteLen(*src_bstr));
          if (!*dest_bstr)
            return E_OUTOFMEMORY;
        }
        else
          *dest_bstr = ((void*)0);
        src_bstr++;
        dest_bstr++;
      }
    }
    else if (psa->fFeatures & FADF_RECORD)
    {
      BYTE *dest_data = dest->pvData;
      BYTE *src_data = psa->pvData;
      IRecordInfo *record;

      SafeArrayGetRecordInfo(psa, &record);
      while (ulCellCount--)
      {

          hr = IRecordInfo_RecordCopy(record, src_data, dest_data);
          if (FAILED(hr)) break;
          src_data += psa->cbElements;
          dest_data += psa->cbElements;
      }

      SafeArraySetRecordInfo(dest, record);


      dest->cbElements = psa->cbElements;
      IRecordInfo_Release(record);
    }
    else if (psa->fFeatures & (FADF_UNKNOWN|FADF_DISPATCH))
    {
      IUnknown **dest_unk = dest->pvData;
      IUnknown **src_unk = psa->pvData;


      while (ulCellCount--)
      {
          if (*dest_unk)
              IUnknown_Release(*dest_unk);
          *dest_unk = *src_unk;
          if (*dest_unk)
              IUnknown_AddRef(*dest_unk);
          src_unk++;
          dest_unk++;
      }
    }
    else
    {

      memcpy(dest->pvData, psa->pvData, ulCellCount * psa->cbElements);
    }

    if (psa->fFeatures & FADF_HAVEIID)
    {
      GUID guid;
      SafeArrayGetIID(psa, &guid);
      SafeArraySetIID(dest, &guid);
    }
    else if (psa->fFeatures & FADF_HAVEVARTYPE)
    {
      SAFEARRAY_SetHiddenDWORD(dest, SAFEARRAY_GetHiddenDWORD(psa));
    }
  }

  return hr;
}
