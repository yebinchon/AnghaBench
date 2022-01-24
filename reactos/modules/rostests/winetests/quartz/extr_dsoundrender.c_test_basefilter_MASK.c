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
typedef  void* ULONG ;
typedef  void IPin ;
typedef  int /*<<< orphan*/  IEnumPins ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,void**,void**) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,void*) ; 
 int /*<<< orphan*/  pDSRender ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static void FUNC9(void)
{
    IEnumPins *pin_enum = NULL;
    IBaseFilter *base = NULL;
    IPin *pins[2];
    ULONG ref;
    HRESULT hr;

    FUNC5(pDSRender, &IID_IBaseFilter, (void **)&base);
    if (base == NULL)
    {
        /* test_query_interface handles this case */
        FUNC7("No IBaseFilter\n");
        return;
    }

    hr = FUNC0(base, NULL);
    FUNC6(hr == E_POINTER, "hr = %08x and not E_POINTER\n", hr);

    hr= FUNC0(base, &pin_enum);
    FUNC6(hr == S_OK, "hr = %08x and not S_OK\n", hr);

    hr = FUNC2(pin_enum, 1, NULL, NULL);
    FUNC6(hr == E_POINTER, "hr = %08x and not E_POINTER\n", hr);

    hr = FUNC2(pin_enum, 2, pins, NULL);
    FUNC6(hr == E_INVALIDARG, "hr = %08x and not E_INVALIDARG\n", hr);

    pins[0] = (void *)0xdead;
    pins[1] = (void *)0xdeed;

    hr = FUNC2(pin_enum, 2, pins, &ref);
    FUNC6(hr == S_FALSE, "hr = %08x instead of S_FALSE\n", hr);
    FUNC6(pins[0] != (void *)0xdead && pins[0] != NULL, "pins[0] = %p\n", pins[0]);
    if (pins[0] != (void *)0xdead && pins[0] != NULL)
    {
        FUNC8(pins[0]);
        FUNC4(pins[0]);
    }

    FUNC6(pins[1] == (void *)0xdeed, "pins[1] = %p\n", pins[1]);

    ref = FUNC3(pin_enum);
    FUNC6(ref == 0, "ref is %u and not 0!\n", ref);

    FUNC1(base);
}