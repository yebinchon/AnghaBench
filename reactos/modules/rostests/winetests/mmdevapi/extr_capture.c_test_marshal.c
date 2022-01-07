
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WAVEFORMATEX ;
typedef int IUnknown ;
typedef int IStream ;
typedef int IAudioClient ;
typedef int IAudioCaptureClient ;
typedef scalar_t__ HRESULT ;


 int AUDCLNT_SHAREMODE_SHARED ;
 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoMarshalInterface (int *,int *,int *,int ,int *,int ) ;
 int CoTaskMemFree (int *) ;
 scalar_t__ CoUnmarshalInterface (int *,int *,void**) ;
 scalar_t__ CreateStreamOnHGlobal (int *,int ,int **) ;
 int IAudioCaptureClient_Release (int *) ;
 scalar_t__ IAudioClient_GetMixFormat (int *,int **) ;
 scalar_t__ IAudioClient_GetService (int *,int *,void**) ;
 scalar_t__ IAudioClient_Initialize (int *,int ,int ,int,int ,int *,int *) ;
 int IAudioClient_Release (int *) ;
 int IID_IAudioCaptureClient ;
 int IID_IAudioClient ;
 scalar_t__ IMMDevice_Activate (int ,int *,int ,int *,void**) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,int ,int ,int *) ;
 int MSHCTX_INPROC ;
 int MSHLFLAGS_NORMAL ;
 int STREAM_SEEK_SET ;
 scalar_t__ S_OK ;
 int TRUE ;
 int dev ;
 int ok (int,char*,scalar_t__) ;
 int ullZero ;

__attribute__((used)) static void test_marshal(void)
{
    IStream *pStream;
    IAudioClient *ac, *acDest;
    IAudioCaptureClient *cc, *ccDest;
    WAVEFORMATEX *pwfx;
    HRESULT hr;

    hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            ((void*)0), (void**)&ac);
    ok(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = IAudioClient_GetMixFormat(ac, &pwfx);
    ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = IAudioClient_Initialize(ac, AUDCLNT_SHAREMODE_SHARED, 0, 5000000,
            0, pwfx, ((void*)0));
    ok(hr == S_OK, "Initialize failed: %08x\n", hr);

    CoTaskMemFree(pwfx);

    hr = IAudioClient_GetService(ac, &IID_IAudioCaptureClient, (void**)&cc);
    ok(hr == S_OK, "GetService failed: %08x\n", hr);
    if(hr != S_OK) {
        IAudioClient_Release(ac);
        return;
    }

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &pStream);
    ok(hr == S_OK, "CreateStreamOnHGlobal failed 0x%08x\n", hr);



    hr = CoMarshalInterface(pStream, &IID_IAudioClient, (IUnknown*)ac, MSHCTX_INPROC, ((void*)0), MSHLFLAGS_NORMAL);
    ok(hr == S_OK, "CoMarshalInterface IAudioClient failed 0x%08x\n", hr);

    IStream_Seek(pStream, ullZero, STREAM_SEEK_SET, ((void*)0));
    hr = CoUnmarshalInterface(pStream, &IID_IAudioClient, (void **)&acDest);
    ok(hr == S_OK, "CoUnmarshalInterface IAudioClient failed 0x%08x\n", hr);
    if (hr == S_OK)
        IAudioClient_Release(acDest);

    IStream_Seek(pStream, ullZero, STREAM_SEEK_SET, ((void*)0));


    hr = CoMarshalInterface(pStream, &IID_IAudioCaptureClient, (IUnknown*)cc, MSHCTX_INPROC, ((void*)0), MSHLFLAGS_NORMAL);
    ok(hr == S_OK, "CoMarshalInterface IAudioCaptureClient failed 0x%08x\n", hr);

    IStream_Seek(pStream, ullZero, STREAM_SEEK_SET, ((void*)0));
    hr = CoUnmarshalInterface(pStream, &IID_IAudioCaptureClient, (void **)&ccDest);
    ok(hr == S_OK, "CoUnmarshalInterface IAudioCaptureClient failed 0x%08x\n", hr);
    if (hr == S_OK)
        IAudioCaptureClient_Release(ccDest);

    IStream_Release(pStream);

    IAudioClient_Release(ac);
    IAudioCaptureClient_Release(cc);

}
