#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * VARIANT ;
typedef  int ULONG ;
struct TYPE_11__ {int fFeatures; int cbElements; int /*<<< orphan*/ ** pvData; } ;
typedef  TYPE_1__ SAFEARRAY ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IRecordInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/ * BYTE ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int FADF_BSTR ; 
 int FADF_CREATEVECTOR ; 
 int FADF_DATADELETED ; 
 int FADF_DISPATCH ; 
 int FADF_HAVEIID ; 
 int FADF_HAVEVARTYPE ; 
 int FADF_RECORD ; 
 int FADF_UNKNOWN ; 
 int FADF_VARIANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int ignored_copy_features ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static HRESULT FUNC18(SAFEARRAY *psa, SAFEARRAY *dest)
{
  HRESULT hr = S_OK;

  if (!psa->pvData)
    return S_OK;

  if (!dest->pvData || psa->fFeatures & FADF_DATADELETED)
    return E_INVALIDARG;
  else
  {
    ULONG ulCellCount = FUNC6(psa);

    dest->fFeatures = (dest->fFeatures & FADF_CREATEVECTOR) | (psa->fFeatures & ~ignored_copy_features);

    if (psa->fFeatures & FADF_VARIANT)
    {
      VARIANT *src_var = psa->pvData;
      VARIANT *dest_var = dest->pvData;

      while(ulCellCount--)
      {
        HRESULT hRet;

        /* destination is cleared automatically */
        hRet = FUNC16(dest_var, src_var);
        if (FUNC0(hRet)) FUNC1("VariantCopy failed with 0x%08x, element %u\n", hRet, ulCellCount);
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
        FUNC14(*dest_bstr);
        if (*src_bstr)
        {
          *dest_bstr = FUNC13((char*)*src_bstr, FUNC15(*src_bstr));
          if (!*dest_bstr)
            return E_OUTOFMEMORY;
        }
        else
          *dest_bstr = NULL;
        src_bstr++;
        dest_bstr++;
      }
    }
    else if (psa->fFeatures & FADF_RECORD)
    {
      BYTE *dest_data = dest->pvData;
      BYTE *src_data = psa->pvData;
      IRecordInfo *record;

      FUNC10(psa, &record);
      while (ulCellCount--)
      {
          /* RecordCopy() clears destination record */
          hr = FUNC2(record, src_data, dest_data);
          if (FUNC0(hr)) break;
          src_data += psa->cbElements;
          dest_data += psa->cbElements;
      }

      FUNC12(dest, record);
      /* This value is set to 32 bytes by default on descriptor creation,
         update with actual structure size. */
      dest->cbElements = psa->cbElements;
      FUNC3(record);
    }
    else if (psa->fFeatures & (FADF_UNKNOWN|FADF_DISPATCH))
    {
      IUnknown **dest_unk = dest->pvData;
      IUnknown **src_unk = psa->pvData;

      /* release old iface, addref new one */
      while (ulCellCount--)
      {
          if (*dest_unk)
              FUNC5(*dest_unk);
          *dest_unk = *src_unk;
          if (*dest_unk)
              FUNC4(*dest_unk);
          src_unk++;
          dest_unk++;
      }
    }
    else
    {
      /* Copy the data over */
      FUNC17(dest->pvData, psa->pvData, ulCellCount * psa->cbElements);
    }

    if (psa->fFeatures & FADF_HAVEIID)
    {
      GUID guid;
      FUNC9(psa, &guid);
      FUNC11(dest, &guid);
    }
    else if (psa->fFeatures & FADF_HAVEVARTYPE)
    {
      FUNC8(dest, FUNC7(psa));
    }
  }

  return hr;
}