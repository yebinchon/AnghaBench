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
struct TYPE_4__ {int cBuffers; int cbBuffer; int cbAlign; scalar_t__ cbPrefix; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IMemAllocator ;
typedef  int /*<<< orphan*/  IMediaSample ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ ALLOCATOR_PROPERTIES ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_MemoryAllocator ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IMemAllocator ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void)
{
    IMemAllocator* pMemAllocator;
    HRESULT hr;

    hr = FUNC0(&CLSID_MemoryAllocator, NULL, CLSCTX_INPROC_SERVER, &IID_IMemAllocator, (LPVOID*)&pMemAllocator);
    FUNC7(hr==S_OK, "Unable to create memory allocator %x\n", hr);

    if (hr == S_OK)
    {
        ALLOCATOR_PROPERTIES RequestedProps;
        ALLOCATOR_PROPERTIES ActualProps;

        IMediaSample *sample = NULL, *sample2 = NULL;

        RequestedProps.cBuffers = 2;
        RequestedProps.cbBuffer = 65536;
        RequestedProps.cbAlign = 1;
        RequestedProps.cbPrefix = 0;

	hr = FUNC6(pMemAllocator, &RequestedProps, &ActualProps);
	FUNC7(hr==S_OK, "SetProperties returned: %x\n", hr);

	hr = FUNC2(pMemAllocator);
	FUNC7(hr==S_OK, "Commit returned: %x\n", hr);
	hr = FUNC2(pMemAllocator);
	FUNC7(hr==S_OK, "Commit returned: %x\n", hr);

        hr = FUNC4(pMemAllocator, &sample, NULL, NULL, 0);
        FUNC7(hr==S_OK, "Could not get a buffer: %x\n", hr);

	hr = FUNC3(pMemAllocator);
	FUNC7(hr==S_OK, "Decommit returned: %x\n", hr);
	hr = FUNC3(pMemAllocator);
	FUNC7(hr==S_OK, "Cecommit returned: %x\n", hr);

        /* Decommit and recommit while holding a sample */
        if (sample)
        {
            hr = FUNC2(pMemAllocator);
            FUNC7(hr==S_OK, "Commit returned: %x\n", hr);

            hr = FUNC4(pMemAllocator, &sample2, NULL, NULL, 0);
            FUNC7(hr==S_OK, "Could not get a buffer: %x\n", hr);
            FUNC1(sample);
            if (sample2)
                FUNC1(sample2);

            hr = FUNC3(pMemAllocator);
            FUNC7(hr==S_OK, "Cecommit returned: %x\n", hr);
        }
        FUNC5(pMemAllocator);
    }
}