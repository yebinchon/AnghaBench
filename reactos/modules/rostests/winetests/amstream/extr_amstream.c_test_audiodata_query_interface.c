
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IMemoryData ;
typedef int IAudioData ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 scalar_t__ IAudioData_QueryInterface (int *,int *,void**) ;
 int IAudioData_Release (int *) ;
 int IID_IAudioData ;
 int IID_IMemoryData ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int * create_audio_data () ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_audiodata_query_interface(void)
{
    IUnknown *unknown = create_audio_data();
    IMemoryData *memory_data = ((void*)0);
    IAudioData *audio_data = ((void*)0);

    HRESULT result;

    result = IUnknown_QueryInterface(unknown, &IID_IMemoryData, (void **)&memory_data);
    ok(E_NOINTERFACE == result, "got 0x%08x\n", result);

    result = IUnknown_QueryInterface(unknown, &IID_IAudioData, (void **)&audio_data);
    ok(S_OK == result, "got 0x%08x\n", result);
    if (S_OK == result)
    {
        result = IAudioData_QueryInterface(audio_data, &IID_IMemoryData, (void **)&memory_data);
        ok(E_NOINTERFACE == result, "got 0x%08x\n", result);

        IAudioData_Release(audio_data);
    }

    IUnknown_Release(unknown);
}
