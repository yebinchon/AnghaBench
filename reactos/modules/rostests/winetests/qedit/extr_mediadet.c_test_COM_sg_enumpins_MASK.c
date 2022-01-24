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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IEnumPins ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_SampleGrabber ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  IID_IEnumPins ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    IBaseFilter *bf;
    IEnumPins *pins, *pins2;
    IUnknown *unk;
    ULONG refcount;
    HRESULT hr;

    hr = FUNC0(&CLSID_SampleGrabber, NULL, CLSCTX_INPROC_SERVER, &IID_IBaseFilter,
            (void**)&bf);
    FUNC8(hr == S_OK, "SampleGrabber create failed: %08x, expected S_OK\n", hr);
    hr = FUNC1(bf, &pins);
    FUNC8(hr == S_OK, "EnumPins create failed: %08x, expected S_OK\n", hr);

    /* Same refcount for all EnumPins interfaces */
    refcount = FUNC3(pins);
    FUNC8(refcount == 2, "refcount == %u, expected 2\n", refcount);
    hr = FUNC4(pins, &IID_IEnumPins, (void**)&pins2);
    FUNC8(hr == S_OK, "QueryInterface for IID_IEnumPins failed: %08x\n", hr);
    FUNC8(pins == pins2, "QueryInterface for self failed (%p != %p)\n", *pins, pins2);
    FUNC5(pins2);

    hr = FUNC4(pins, &IID_IUnknown, (void**)&unk);
    FUNC8(hr == S_OK, "QueryInterface for IID_IUnknown failed: %08x\n", hr);
    refcount = FUNC6(unk);
    FUNC8(refcount == 4, "refcount == %u, expected 4\n", refcount);
    refcount = FUNC7(unk);

    while (FUNC5(pins));
    FUNC2(bf);
}