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
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ LONG_PTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMMDeviceEnumerator ;
typedef  int /*<<< orphan*/  IMMDeviceCollection ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int E_INVALIDARG ; 
 int E_NOINTERFACE ; 
 int E_POINTER ; 
 int /*<<< orphan*/  IID_IMMDeviceCollection ; 
 int /*<<< orphan*/  IID_IMMDeviceEnumerator ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(IMMDeviceEnumerator *mme, IMMDeviceCollection *col)
{
    IMMDeviceCollection *col2;
    IMMDeviceEnumerator *mme2;
    IUnknown *unk;
    HRESULT hr;
    ULONG ref;
    UINT numdev;
    IMMDevice *dev;

    /* collection doesn't keep a ref on parent */
    FUNC6(mme);
    ref = FUNC8(mme);
    FUNC13(ref == 2, "Reference count on parent is %u\n", ref);

    ref = FUNC1(col);
    FUNC5(col);
    FUNC13(ref == 2, "Invalid reference count %u on collection\n", ref);

    hr = FUNC4(col, &IID_IUnknown, NULL);
    FUNC13(hr == E_POINTER, "Null ppv returns %08x\n", hr);

    hr = FUNC4(col, &IID_IUnknown, (void**)&unk);
    FUNC13(hr == S_OK, "Cannot query for IID_IUnknown: 0x%08x\n", hr);
    if (hr == S_OK)
    {
        FUNC13((IUnknown*)col == unk, "Pointers are not identical %p/%p/%p\n", col, unk, mme);
        FUNC11(unk);
    }

    hr = FUNC4(col, &IID_IMMDeviceCollection, (void**)&col2);
    FUNC13(hr == S_OK, "Cannot query for IID_IMMDeviceCollection: 0x%08x\n", hr);
    if (hr == S_OK)
        FUNC5(col2);

    hr = FUNC4(col, &IID_IMMDeviceEnumerator, (void**)&mme2);
    FUNC13(hr == E_NOINTERFACE, "Query for IID_IMMDeviceEnumerator returned: 0x%08x\n", hr);
    if (hr == S_OK)
        FUNC8(mme2);

    hr = FUNC2(col, NULL);
    FUNC13(hr == E_POINTER, "GetCount returned 0x%08x\n", hr);

    hr = FUNC2(col, &numdev);
    FUNC13(hr == S_OK, "GetCount returned 0x%08x\n", hr);

    dev = (void*)(LONG_PTR)0x12345678;
    hr = FUNC3(col, numdev, &dev);
    FUNC13(hr == E_INVALIDARG, "Asking for too high device returned 0x%08x\n", hr);
    FUNC13(dev == NULL, "Returned non-null device\n");

    if (numdev)
    {
        hr = FUNC3(col, 0, NULL);
        FUNC13(hr == E_POINTER, "Query with null pointer returned 0x%08x\n", hr);

        hr = FUNC3(col, 0, &dev);
        FUNC13(hr == S_OK, "Valid Item returned 0x%08x\n", hr);
        FUNC13(dev != NULL, "Device is null!\n");
        if (dev != NULL)
        {
            char temp[128];
            WCHAR *id = NULL;
            if (FUNC9(dev, &id) == S_OK)
            {
                IMMDevice *dev2;

                temp[sizeof(temp)-1] = 0;
                FUNC12(CP_ACP, 0, id, -1, temp, sizeof(temp)-1, NULL, NULL);
                FUNC14("Device found: %s\n", temp);

                hr = FUNC7(mme, id, &dev2);
                FUNC13(hr == S_OK, "GetDevice failed: %08x\n", hr);

                FUNC10(dev2);

                FUNC0(id);
            }
        }
        if (dev)
            FUNC10(dev);
    }
    FUNC5(col);
}