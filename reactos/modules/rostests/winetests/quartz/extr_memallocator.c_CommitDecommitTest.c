
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cBuffers; int cbBuffer; int cbAlign; scalar_t__ cbPrefix; } ;
typedef int LPVOID ;
typedef int IMemAllocator ;
typedef int IMediaSample ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ ALLOCATOR_PROPERTIES ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_MemoryAllocator ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IMemAllocator ;
 int IMediaSample_Release (int *) ;
 scalar_t__ IMemAllocator_Commit (int *) ;
 scalar_t__ IMemAllocator_Decommit (int *) ;
 scalar_t__ IMemAllocator_GetBuffer (int *,int **,int *,int *,int ) ;
 int IMemAllocator_Release (int *) ;
 scalar_t__ IMemAllocator_SetProperties (int *,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void CommitDecommitTest(void)
{
    IMemAllocator* pMemAllocator;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_MemoryAllocator, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IMemAllocator, (LPVOID*)&pMemAllocator);
    ok(hr==S_OK, "Unable to create memory allocator %x\n", hr);

    if (hr == S_OK)
    {
        ALLOCATOR_PROPERTIES RequestedProps;
        ALLOCATOR_PROPERTIES ActualProps;

        IMediaSample *sample = ((void*)0), *sample2 = ((void*)0);

        RequestedProps.cBuffers = 2;
        RequestedProps.cbBuffer = 65536;
        RequestedProps.cbAlign = 1;
        RequestedProps.cbPrefix = 0;

 hr = IMemAllocator_SetProperties(pMemAllocator, &RequestedProps, &ActualProps);
 ok(hr==S_OK, "SetProperties returned: %x\n", hr);

 hr = IMemAllocator_Commit(pMemAllocator);
 ok(hr==S_OK, "Commit returned: %x\n", hr);
 hr = IMemAllocator_Commit(pMemAllocator);
 ok(hr==S_OK, "Commit returned: %x\n", hr);

        hr = IMemAllocator_GetBuffer(pMemAllocator, &sample, ((void*)0), ((void*)0), 0);
        ok(hr==S_OK, "Could not get a buffer: %x\n", hr);

 hr = IMemAllocator_Decommit(pMemAllocator);
 ok(hr==S_OK, "Decommit returned: %x\n", hr);
 hr = IMemAllocator_Decommit(pMemAllocator);
 ok(hr==S_OK, "Cecommit returned: %x\n", hr);


        if (sample)
        {
            hr = IMemAllocator_Commit(pMemAllocator);
            ok(hr==S_OK, "Commit returned: %x\n", hr);

            hr = IMemAllocator_GetBuffer(pMemAllocator, &sample2, ((void*)0), ((void*)0), 0);
            ok(hr==S_OK, "Could not get a buffer: %x\n", hr);
            IMediaSample_Release(sample);
            if (sample2)
                IMediaSample_Release(sample2);

            hr = IMemAllocator_Decommit(pMemAllocator);
            ok(hr==S_OK, "Cecommit returned: %x\n", hr);
        }
        IMemAllocator_Release(pMemAllocator);
    }
}
