#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  IID_NULL ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(IDispatch *disp, REFIID *riid)
{
    ITypeInfo *typeinfo;
    TYPEATTR *typeattr;
    UINT count;
    HRESULT hr;

    count = 10;
    hr = FUNC1(disp, &count);
    FUNC6(hr == S_OK, "got 0x%08x\n", hr);
    FUNC6(count == 1, "got %u\n", count);

    hr = FUNC0(disp, 0, LOCALE_SYSTEM_DEFAULT, &typeinfo);
    FUNC6(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(typeinfo, &typeattr);
    FUNC6(hr == S_OK, "got 0x%08x\n", hr);
    while (!FUNC5(*riid, &IID_NULL)) {
        if (FUNC5(&typeattr->guid, *riid))
            break;
        riid++;
    }
    FUNC6(FUNC5(&typeattr->guid, *riid), "unexpected type guid %s\n", FUNC7(&typeattr->guid));

    FUNC4(typeinfo, typeattr);
    FUNC3(typeinfo);
}