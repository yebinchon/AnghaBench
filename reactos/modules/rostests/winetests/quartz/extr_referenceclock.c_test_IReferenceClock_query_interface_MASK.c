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
typedef  int /*<<< orphan*/  IReferenceClock ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IDirectDraw ; 
 int /*<<< orphan*/  IID_IReferenceClock ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(const char * clockdesc, IReferenceClock * pClock)
{
    HRESULT hr;
    IUnknown *pF;

    hr = FUNC0(pClock, &IID_IUnknown, (void**)&pF);
    FUNC3(hr == S_OK, "IReferenceClock_QueryInterface returned %x\n", hr);
    FUNC3(pF != NULL, "pF is NULL\n");
    if (FUNC2(hr)) FUNC1(pF);

    hr = FUNC0(pClock, &IID_IDirectDraw, (void**)&pF);
    FUNC3(hr == E_NOINTERFACE, "IReferenceClock_QueryInterface returned %x\n", hr);
    FUNC3(pF == NULL, "pF is not NULL\n");

    hr = FUNC0(pClock, &IID_IReferenceClock, (void**)&pF);
    FUNC3(hr == S_OK, "IReferenceClock_QueryInterface returned %x\n", hr);
    FUNC3(pF != NULL, "pF is NULL\n");
    if (FUNC2(hr)) FUNC1(pF);
}