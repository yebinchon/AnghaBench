#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {int cElems; int /*<<< orphan*/  pElems; } ;
struct TYPE_7__ {TYPE_1__ caub; } ;
struct TYPE_8__ {int vt; TYPE_2__ u; } ;
typedef  TYPE_3__ PROPVARIANT ;
typedef  int LONG ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (char const*,int,TYPE_3__*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int S_OK ; 
 int FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int VT_ARRAY ; 
 int VT_UI1 ; 
 int VT_VECTOR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const char data_in[] = "test";
    PROPVARIANT propvar;
    VARIANT var;
    HRESULT hres;
    void *data_out;
    LONG size;

    hres = FUNC0(NULL, 0, &propvar);
    FUNC12(hres == S_OK, "InitPropVariantFromBuffer returned %x\n", hres);
    FUNC12(propvar.vt == (VT_VECTOR|VT_UI1), "propvar.vt = %d\n", propvar.vt);
    FUNC12(propvar.u.caub.cElems == 0, "cElems = %d\n", propvar.u.caub.cElems == 0);
    FUNC2(&propvar);

    hres = FUNC0(data_in, 4, &propvar);
    FUNC12(hres == S_OK, "InitPropVariantFromBuffer returned %x\n", hres);
    FUNC12(propvar.vt == (VT_VECTOR|VT_UI1), "propvar.vt = %d\n", propvar.vt);
    FUNC12(propvar.u.caub.cElems == 4, "cElems = %d\n", propvar.u.caub.cElems == 0);
    FUNC12(!FUNC11(propvar.u.caub.pElems, data_in, 4), "Data inside array is incorrect\n");
    FUNC2(&propvar);

    hres = FUNC1(NULL, 0, &var);
    FUNC12(hres == S_OK, "InitVariantFromBuffer returned %x\n", hres);
    FUNC12(FUNC9(&var) == (VT_ARRAY|VT_UI1), "V_VT(&var) = %d\n", FUNC9(&var));
    size = FUNC4(FUNC8(&var));
    FUNC12(size == 1, "SafeArrayGetDim returned %d\n", size);
    hres = FUNC5(FUNC8(&var), 1, &size);
    FUNC12(hres == S_OK, "SafeArrayGetLBound returned %x\n", hres);
    FUNC12(size == 0, "LBound = %d\n", size);
    hres = FUNC6(FUNC8(&var), 1, &size);
    FUNC12(hres == S_OK, "SafeArrayGetUBound returned %x\n", hres);
    FUNC12(size == -1, "UBound = %d\n", size);
    FUNC10(&var);

    hres = FUNC1(data_in, 4, &var);
    FUNC12(hres == S_OK, "InitVariantFromBuffer returned %x\n", hres);
    FUNC12(FUNC9(&var) == (VT_ARRAY|VT_UI1), "V_VT(&var) = %d\n", FUNC9(&var));
    size = FUNC4(FUNC8(&var));
    FUNC12(size == 1, "SafeArrayGetDim returned %d\n", size);
    hres = FUNC5(FUNC8(&var), 1, &size);
    FUNC12(hres == S_OK, "SafeArrayGetLBound returned %x\n", hres);
    FUNC12(size == 0, "LBound = %d\n", size);
    hres = FUNC6(FUNC8(&var), 1, &size);
    FUNC12(hres == S_OK, "SafeArrayGetUBound returned %x\n", hres);
    FUNC12(size == 3, "UBound = %d\n", size);
    hres = FUNC3(FUNC8(&var), &data_out);
    FUNC12(hres == S_OK, "SafeArrayAccessData failed %x\n", hres);
    FUNC12(!FUNC11(data_in, data_out, 4), "Data inside safe array is incorrect\n");
    hres = FUNC7(FUNC8(&var));
    FUNC12(hres == S_OK, "SafeArrayUnaccessData failed %x\n", hres);
    FUNC10(&var);
}