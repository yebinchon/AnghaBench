
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int WCHAR ;
typedef int ULONG ;
typedef scalar_t__ UINT ;
typedef scalar_t__ LONG_PTR ;
typedef int IUnknown ;
typedef int IMMDeviceEnumerator ;
typedef int IMMDeviceCollection ;
typedef int IMMDevice ;
typedef int HRESULT ;


 int CP_ACP ;
 int CoTaskMemFree (int *) ;
 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int E_POINTER ;
 int IID_IMMDeviceCollection ;
 int IID_IMMDeviceEnumerator ;
 int IID_IUnknown ;
 int IMMDeviceCollection_AddRef (int *) ;
 int IMMDeviceCollection_GetCount (int *,scalar_t__*) ;
 int IMMDeviceCollection_Item (int *,scalar_t__,int **) ;
 int IMMDeviceCollection_QueryInterface (int *,int *,void**) ;
 int IMMDeviceCollection_Release (int *) ;
 int IMMDeviceEnumerator_AddRef (int *) ;
 int IMMDeviceEnumerator_GetDevice (int *,int *,int **) ;
 int IMMDeviceEnumerator_Release (int *) ;
 int IMMDevice_GetId (int *,int **) ;
 int IMMDevice_Release (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int ok (int,char*,...) ;
 int trace (char*,char*) ;

__attribute__((used)) static void test_collection(IMMDeviceEnumerator *mme, IMMDeviceCollection *col)
{
    IMMDeviceCollection *col2;
    IMMDeviceEnumerator *mme2;
    IUnknown *unk;
    HRESULT hr;
    ULONG ref;
    UINT numdev;
    IMMDevice *dev;


    IMMDeviceEnumerator_AddRef(mme);
    ref = IMMDeviceEnumerator_Release(mme);
    ok(ref == 2, "Reference count on parent is %u\n", ref);

    ref = IMMDeviceCollection_AddRef(col);
    IMMDeviceCollection_Release(col);
    ok(ref == 2, "Invalid reference count %u on collection\n", ref);

    hr = IMMDeviceCollection_QueryInterface(col, &IID_IUnknown, ((void*)0));
    ok(hr == E_POINTER, "Null ppv returns %08x\n", hr);

    hr = IMMDeviceCollection_QueryInterface(col, &IID_IUnknown, (void**)&unk);
    ok(hr == S_OK, "Cannot query for IID_IUnknown: 0x%08x\n", hr);
    if (hr == S_OK)
    {
        ok((IUnknown*)col == unk, "Pointers are not identical %p/%p/%p\n", col, unk, mme);
        IUnknown_Release(unk);
    }

    hr = IMMDeviceCollection_QueryInterface(col, &IID_IMMDeviceCollection, (void**)&col2);
    ok(hr == S_OK, "Cannot query for IID_IMMDeviceCollection: 0x%08x\n", hr);
    if (hr == S_OK)
        IMMDeviceCollection_Release(col2);

    hr = IMMDeviceCollection_QueryInterface(col, &IID_IMMDeviceEnumerator, (void**)&mme2);
    ok(hr == E_NOINTERFACE, "Query for IID_IMMDeviceEnumerator returned: 0x%08x\n", hr);
    if (hr == S_OK)
        IMMDeviceEnumerator_Release(mme2);

    hr = IMMDeviceCollection_GetCount(col, ((void*)0));
    ok(hr == E_POINTER, "GetCount returned 0x%08x\n", hr);

    hr = IMMDeviceCollection_GetCount(col, &numdev);
    ok(hr == S_OK, "GetCount returned 0x%08x\n", hr);

    dev = (void*)(LONG_PTR)0x12345678;
    hr = IMMDeviceCollection_Item(col, numdev, &dev);
    ok(hr == E_INVALIDARG, "Asking for too high device returned 0x%08x\n", hr);
    ok(dev == ((void*)0), "Returned non-null device\n");

    if (numdev)
    {
        hr = IMMDeviceCollection_Item(col, 0, ((void*)0));
        ok(hr == E_POINTER, "Query with null pointer returned 0x%08x\n", hr);

        hr = IMMDeviceCollection_Item(col, 0, &dev);
        ok(hr == S_OK, "Valid Item returned 0x%08x\n", hr);
        ok(dev != ((void*)0), "Device is null!\n");
        if (dev != ((void*)0))
        {
            char temp[128];
            WCHAR *id = ((void*)0);
            if (IMMDevice_GetId(dev, &id) == S_OK)
            {
                IMMDevice *dev2;

                temp[sizeof(temp)-1] = 0;
                WideCharToMultiByte(CP_ACP, 0, id, -1, temp, sizeof(temp)-1, ((void*)0), ((void*)0));
                trace("Device found: %s\n", temp);

                hr = IMMDeviceEnumerator_GetDevice(mme, id, &dev2);
                ok(hr == S_OK, "GetDevice failed: %08x\n", hr);

                IMMDevice_Release(dev2);

                CoTaskMemFree(id);
            }
        }
        if (dev)
            IMMDevice_Release(dev);
    }
    IMMDeviceCollection_Release(col);
}
