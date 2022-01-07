
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int IUnknown ;
typedef int IAudioData ;
typedef int * HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int * E_INVALIDARG ;
 scalar_t__ FAILED (int *) ;
 int * IAudioData_GetInfo (int *,int*,int **,int *) ;
 int IAudioData_Release (int *) ;
 int * IAudioData_SetBuffer (int *,int,int *,int ) ;
 int IID_IAudioData ;
 int * IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int * S_OK ;
 int * create_audio_data () ;
 int ok (int,char*,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_audiodata_set_buffer(void)
{
    IUnknown *unknown = create_audio_data();
    IAudioData *audio_data = ((void*)0);
    BYTE buffer[100] = {0};
    DWORD length = 0;
    BYTE *data = ((void*)0);

    HRESULT result;

    result = IUnknown_QueryInterface(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FAILED(result))
    {

        skip("No IAudioData\n");
        goto out_unknown;
    }

    result = IAudioData_SetBuffer(audio_data, 100, ((void*)0), 0);
    ok(S_OK == result, "got 0x%08x\n", result);

    data = (BYTE *)0xdeadbeef;
    length = 0xdeadbeef;
    result = IAudioData_GetInfo(audio_data, &length, &data, ((void*)0));
    ok(S_OK == result, "got 0x%08x\n", result);
    ok(100 == length, "got %u\n", length);
    ok(((void*)0) != data, "got %p\n", data);

    result = IAudioData_SetBuffer(audio_data, 0, buffer, 0);
    ok(E_INVALIDARG == result, "got 0x%08x\n", result);

    result = IAudioData_SetBuffer(audio_data, sizeof(buffer), buffer, 0);
    ok(S_OK == result, "got 0x%08x\n", result);

    data = (BYTE *)0xdeadbeef;
    length = 0xdeadbeef;
    result = IAudioData_GetInfo(audio_data, &length, &data, ((void*)0));
    ok(S_OK == result, "got 0x%08x\n", result);
    ok(sizeof(buffer) == length, "got %u\n", length);
    ok(buffer == data, "got %p\n", data);

    IAudioData_Release(audio_data);

out_unknown:
    IUnknown_Release(unknown);
}
