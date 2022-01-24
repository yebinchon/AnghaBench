#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IQueryAssociations ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_QueryAssociations ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  IID_IQueryAssociations ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    IQueryAssociations *qa;
    IQueryAssociations *qa2;
    IUnknown *unk;
    HRESULT hr;

    hr = FUNC0(&CLSID_QueryAssociations, NULL, CLSCTX_INPROC_SERVER, &IID_IQueryAssociations, (void*)&qa);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC1(qa, &IID_IQueryAssociations, (void**)&qa2);
    FUNC5(hr == S_OK, "QueryInterface (IQueryAssociations) returned 0x%x\n", hr);
    if (FUNC4(hr)) {
        FUNC2(qa2);
    }

    hr = FUNC1(qa, &IID_IUnknown, (void**)&unk);
    FUNC5(hr == S_OK, "QueryInterface (IUnknown) returned 0x%x\n", hr);
    if (FUNC4(hr)) {
        FUNC3(unk);
    }

    hr = FUNC1(qa, &IID_IUnknown, NULL);
    FUNC5(hr == E_POINTER, "got 0x%x (expected E_POINTER)\n", hr);

    FUNC2(qa);
}