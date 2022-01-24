#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ ULONG ;
struct TYPE_5__ {int fFeatures; scalar_t__ pvData; scalar_t__ cbElements; } ;
typedef  TYPE_1__ SAFEARRAY ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ LPUNKNOWN ;
typedef  int /*<<< orphan*/  IRecordInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int FADF_BSTR ; 
 int FADF_DATADELETED ; 
 int FADF_DISPATCH ; 
 int FADF_RECORD ; 
 int FADF_UNKNOWN ; 
 int FADF_VARIANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(SAFEARRAY *psa, ULONG ulStartCell)
{
  if (psa->pvData && !(psa->fFeatures & FADF_DATADELETED))
  {
    ULONG ulCellCount = FUNC5(psa);

    if (ulStartCell > ulCellCount) {
      FUNC1("unexpected ulCellCount %d, start %d\n",ulCellCount,ulStartCell);
      return E_UNEXPECTED;
    }

    ulCellCount -= ulStartCell;

    if (psa->fFeatures & (FADF_UNKNOWN|FADF_DISPATCH))
    {
      LPUNKNOWN *lpUnknown = (LPUNKNOWN *)psa->pvData + ulStartCell;

      while(ulCellCount--)
      {
        if (*lpUnknown)
          FUNC4(*lpUnknown);
        lpUnknown++;
      }
    }
    else if (psa->fFeatures & FADF_RECORD)
    {
      IRecordInfo *lpRecInfo;

      if (FUNC6(FUNC7(psa, &lpRecInfo)))
      {
        PBYTE pRecordData = psa->pvData;
        while(ulCellCount--)
        {
          FUNC2(lpRecInfo, pRecordData);
          pRecordData += psa->cbElements;
        }
        FUNC3(lpRecInfo);
      }
    }
    else if (psa->fFeatures & FADF_BSTR)
    {
      BSTR* lpBstr = (BSTR*)psa->pvData + ulStartCell;

      while(ulCellCount--)
      {
        FUNC8(*lpBstr);
        lpBstr++;
      }
    }
    else if (psa->fFeatures & FADF_VARIANT)
    {
      VARIANT* lpVariant = (VARIANT*)psa->pvData + ulStartCell;

      while(ulCellCount--)
      {
        HRESULT hRet = FUNC9(lpVariant);

        if (FUNC0(hRet)) FUNC1("VariantClear of element failed!\n");
        lpVariant++;
      }
    }
  }
  return S_OK;
}