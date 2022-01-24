#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sab ;
typedef  size_t VARTYPE ;
typedef  size_t UINT ;
struct TYPE_17__ {int fFeatures; } ;
struct TYPE_16__ {int cElements; scalar_t__ lLbound; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  TYPE_2__ SAFEARRAY ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DISP_E_ARRAYISLOCKED ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int FADF_HAVEIID ; 
 int FADF_HAVEVARTYPE ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC2 (size_t,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 size_t FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 size_t VT_CLSID ; 
 size_t VT_DISPATCH ; 
 size_t VT_EMPTY ; 
 size_t VT_R8 ; 
 size_t VT_RECORD ; 
 size_t VT_UI1 ; 
 size_t VT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,size_t*) ; 

__attribute__((used)) static void FUNC14(void)
{
  SAFEARRAYBOUND sab[4];
  SAFEARRAY *sa;
  HRESULT hres;
  VARTYPE vt;
  UINT dimension;

  for (dimension = 0; dimension < FUNC0(sab); dimension++)
  {
    sab[dimension].lLbound = 0;
    sab[dimension].cElements = 8;
  }

  /* Failure cases */
/* This test crashes very early versions with no error checking...
  sa = SafeArrayCreate(VT_UI1, 1, NULL);
  ok(sa == NULL, "NULL bounds didn't fail\n");
*/
  sa = FUNC2(VT_UI1, 65536, sab);
  FUNC12(!sa, "Max bounds didn't fail\n");

  FUNC11(sab, 0, sizeof(sab));

  /* Don't test 0 sized dimensions, as Windows has a bug which allows this */

  for (dimension = 0; dimension < FUNC0(sab); dimension++)
    sab[dimension].cElements = 8;

  /* Test all VARTYPES in 1-4 dimensions */
  for (dimension = 1; dimension < 4; dimension++)
  {
    for (vt = VT_EMPTY; vt < VT_CLSID; vt++)
    {
      DWORD dwLen = FUNC1(vt);

      sa = FUNC2(vt, dimension, sab);

      if (dwLen)
        FUNC12(sa != NULL, "VARTYPE %d (@%d dimensions) failed\n", vt, dimension);
      else
        FUNC12(sa == NULL || vt == VT_R8,
           "VARTYPE %d (@%d dimensions) succeeded!\n", vt, dimension);

      if (sa)
      {
        FUNC12(FUNC6(sa) == dimension,
           "VARTYPE %d (@%d dimensions) cDims is %d, expected %d\n",
           vt, dimension, FUNC6(sa), dimension);
        FUNC12(FUNC7(sa) == dwLen || vt == VT_R8,
           "VARTYPE %d (@%d dimensions) cbElements is %d, expected %d\n",
           vt, dimension, FUNC7(sa), dwLen);

        if (vt != VT_UNKNOWN && vt != VT_DISPATCH)
        {
          FUNC12((sa->fFeatures & FADF_HAVEIID) == 0,
             "Non interface type should not have FADF_HAVEIID\n");
          hres = FUNC9(sa, &IID_IUnknown);
          FUNC12(hres == E_INVALIDARG, "Unexpected ret value %#x.\n", hres);
          if (vt != VT_RECORD)
          {
            VARTYPE aVt;

            FUNC12(sa->fFeatures & FADF_HAVEVARTYPE,
               "Non interface type should have FADF_HAVEVARTYPE\n");
            if (&pSafeArrayGetVartype)
            {
              hres = FUNC13(sa, &aVt);
              FUNC12(hres == S_OK && aVt == vt,
                 "Non interface type %d: bad type %d, hres %x\n", vt, aVt, hres);
            }
          }
        }
        else
        {
          FUNC12(sa->fFeatures & FADF_HAVEIID, "Interface type should have FADF_HAVEIID\n");
          hres = FUNC9(sa, &IID_IUnknown);
          FUNC12(hres == S_OK, "Failed to set array IID, hres %#x.\n", hres);
          FUNC12((sa->fFeatures & FADF_HAVEVARTYPE) == 0,
             "Interface type %d should not have FADF_HAVEVARTYPE\n", vt);
        }

        hres = FUNC8(sa);
        FUNC12(hres == S_OK, "Lock VARTYPE %d (@%d dimensions) failed; hres 0x%x\n",
           vt, dimension, hres);

        if (hres == S_OK)
        {
          hres = FUNC3(sa);
          FUNC12(hres == DISP_E_ARRAYISLOCKED,"Destroy() got hres %x\n", hres);

          hres = FUNC4(sa);
          FUNC12(hres == DISP_E_ARRAYISLOCKED,"DestroyData() got hres %x\n", hres);

          hres = FUNC5(sa);
          FUNC12(hres == DISP_E_ARRAYISLOCKED,"DestroyDescriptor() got hres %x\n", hres);

          hres = FUNC10(sa);
          FUNC12(hres == S_OK, "Unlock VARTYPE %d (@%d dims) hres 0x%x\n",
             vt, dimension, hres);

          hres = FUNC3(sa);
          FUNC12(hres == S_OK, "destroy VARTYPE %d (@%d dims) hres 0x%x\n",
             vt, dimension, hres);
        }
      }
    }
  }
}