#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_13__ {int QuadPart; } ;
struct TYPE_12__ {int QuadPart; } ;
struct TYPE_14__ {int ulVal; int lVal; int uiVal; int iVal; TYPE_2__ hVal; TYPE_1__ uhVal; } ;
struct TYPE_15__ {int vt; TYPE_3__ u; } ;
typedef  int SHORT ;
typedef  TYPE_4__ PROPVARIANT ;
typedef  int LONGLONG ;
typedef  int LONG ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_ARITHMETIC_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int*) ; 
 int FUNC4 (TYPE_4__*,int*) ; 
 int FUNC5 (TYPE_4__*,int*) ; 
 int FUNC6 (TYPE_4__*,int*) ; 
 int FUNC7 (TYPE_4__*,int*) ; 
 int FUNC8 (TYPE_4__*,int*) ; 
 int S_OK ; 
 int VT_I2 ; 
 int VT_I4 ; 
 void* VT_I8 ; 
 int VT_UI2 ; 
 int VT_UI4 ; 
 int VT_UI8 ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(void)
{
    PROPVARIANT propvar;
    SHORT sval;
    USHORT usval;
    LONG lval;
    ULONG ulval;
    LONGLONG llval;
    ULONGLONG ullval;
    HRESULT hr;

    propvar.vt = 0xdead;
    hr = FUNC2(&propvar);
    FUNC9 (FUNC0(hr), "PropVariantClear fails on invalid vt.\n");

    propvar.vt = VT_I8;
    FUNC2(&propvar);

    propvar.vt = VT_I8;
    propvar.u.hVal.QuadPart = (ULONGLONG)1 << 63;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == (ULONGLONG)1 << 63, "got wrong value %s\n", FUNC10(llval));

    hr = FUNC8(&propvar, &ullval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    hr = FUNC4(&propvar, &lval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    hr = FUNC7(&propvar, &ulval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    hr = FUNC3(&propvar, &sval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    hr = FUNC6(&propvar, &usval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    propvar.vt = VT_UI8;
    propvar.u.uhVal.QuadPart = 5;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == 5, "got wrong value %s\n", FUNC10(llval));

    hr = FUNC8(&propvar, &ullval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(ullval == 5, "got wrong value %s\n", FUNC10(ullval));

    hr = FUNC4(&propvar, &lval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(lval == 5, "got wrong value %d\n", lval);

    hr = FUNC7(&propvar, &ulval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(ulval == 5, "got wrong value %d\n", ulval);

    hr = FUNC3(&propvar, &sval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(sval == 5, "got wrong value %d\n", sval);

    hr = FUNC6(&propvar, &usval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(usval == 5, "got wrong value %d\n", usval);

    propvar.vt = VT_I8;
    propvar.u.hVal.QuadPart = -5;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == -5, "got wrong value %s\n", FUNC10(llval));

    hr = FUNC8(&propvar, &ullval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    hr = FUNC4(&propvar, &lval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(lval == -5, "got wrong value %d\n", lval);

    hr = FUNC7(&propvar, &ulval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    hr = FUNC3(&propvar, &sval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(sval == -5, "got wrong value %d\n", sval);

    hr = FUNC6(&propvar, &usval);
    FUNC9(hr == FUNC1(ERROR_ARITHMETIC_OVERFLOW), "hr=%x\n", hr);

    propvar.vt = VT_UI4;
    propvar.u.ulVal = 6;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == 6, "got wrong value %s\n", FUNC10(llval));

    propvar.vt = VT_I4;
    propvar.u.lVal = -6;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == -6, "got wrong value %s\n", FUNC10(llval));

    propvar.vt = VT_UI2;
    propvar.u.uiVal = 7;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == 7, "got wrong value %s\n", FUNC10(llval));

    propvar.vt = VT_I2;
    propvar.u.iVal = -7;

    hr = FUNC5(&propvar, &llval);
    FUNC9(hr == S_OK, "hr=%x\n", hr);
    FUNC9(llval == -7, "got wrong value %s\n", FUNC10(llval));
}