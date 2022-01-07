
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int IUnknown ;
typedef int IAudioData ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int E_INVALIDARG ;
 scalar_t__ FAILED (int) ;
 int IAudioData_GetInfo (int *,int *,int *,int*) ;
 int IAudioData_Release (int *) ;
 int IAudioData_SetActual (int *,int) ;
 int IAudioData_SetBuffer (int *,int,int *,int ) ;
 int IID_IAudioData ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int * create_audio_data () ;
 int ok (int,char*,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_audiodata_set_actual(void)
{
    IUnknown *unknown = create_audio_data();
    IAudioData *audio_data = ((void*)0);
    BYTE buffer[100] = {0};
    DWORD actual_data = 0;

    HRESULT result;

    result = IUnknown_QueryInterface(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FAILED(result))
    {

        skip("No IAudioData\n");
        goto out_unknown;
    }

    result = IAudioData_SetActual(audio_data, 0);
    ok(S_OK == result, "got 0x%08x\n", result);

    result = IAudioData_SetBuffer(audio_data, sizeof(buffer), buffer, 0);
    ok(S_OK == result, "got 0x%08x\n", result);

    result = IAudioData_SetActual(audio_data, sizeof(buffer) + 1);
    ok(E_INVALIDARG == result, "got 0x%08x\n", result);

    result = IAudioData_SetActual(audio_data, sizeof(buffer));
    ok(S_OK == result, "got 0x%08x\n", result);

    actual_data = 0xdeadbeef;
    result = IAudioData_GetInfo(audio_data, ((void*)0), ((void*)0), &actual_data);
    ok(S_OK == result, "got 0x%08x\n", result);
    ok(sizeof(buffer) == actual_data, "got %u\n", actual_data);

    result = IAudioData_SetActual(audio_data, 0);
    ok(S_OK == result, "got 0x%08x\n", result);

    actual_data = 0xdeadbeef;
    result = IAudioData_GetInfo(audio_data, ((void*)0), ((void*)0), &actual_data);
    ok(S_OK == result, "got 0x%08x\n", result);
    ok(0 == actual_data, "got %u\n", actual_data);

    IAudioData_Release(audio_data);

out_unknown:
    IUnknown_Release(unknown);
}
