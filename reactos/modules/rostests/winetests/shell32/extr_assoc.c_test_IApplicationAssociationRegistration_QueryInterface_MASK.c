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
typedef  int /*<<< orphan*/  IApplicationAssociationRegistration ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IApplicationAssociationRegistration ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(IApplicationAssociationRegistration *appreg)
{
    IApplicationAssociationRegistration *appreg2;
    IUnknown *unk;
    HRESULT hr;

    hr = FUNC0(appreg, &IID_IApplicationAssociationRegistration,
       (void**)&appreg2);
    FUNC4(hr == S_OK, "QueryInterface (IApplicationAssociationRegistration) returned 0x%x\n", hr);
    if (FUNC3(hr)) {
        FUNC1(appreg2);
    }

    hr = FUNC0(appreg, &IID_IUnknown, (void**)&unk);
    FUNC4(hr == S_OK, "QueryInterface (IUnknown) returned 0x%x\n", hr);
    if (FUNC3(hr)) {
        FUNC2(unk);
    }

    hr = FUNC0(appreg, &IID_IUnknown, NULL);
    FUNC4(hr == E_POINTER, "got 0x%x (expected E_POINTER)\n", hr);
}