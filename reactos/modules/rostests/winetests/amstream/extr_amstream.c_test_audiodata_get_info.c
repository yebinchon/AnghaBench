
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IAudioData ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IAudioData_GetInfo (int *,int *,int *,int *) ;
 int IAudioData_Release (int *) ;
 int IID_IAudioData ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ MS_E_NOTINIT ;
 int * create_audio_data () ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_audiodata_get_info(void)
{
    IUnknown *unknown = create_audio_data();
    IAudioData *audio_data = ((void*)0);

    HRESULT result;

    result = IUnknown_QueryInterface(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FAILED(result))
    {

        skip("No IAudioData\n");
        goto out_unknown;
    }

    result = IAudioData_GetInfo(audio_data, ((void*)0), ((void*)0), ((void*)0));
    ok(MS_E_NOTINIT == result, "got 0x%08x\n", result);

    IAudioData_Release(audio_data);

out_unknown:
    IUnknown_Release(unknown);
}
