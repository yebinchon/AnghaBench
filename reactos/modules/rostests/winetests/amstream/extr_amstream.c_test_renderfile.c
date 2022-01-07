
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int IMediaStream ;
typedef int IDirectDrawSurface ;
typedef int IDirectDrawStreamSample ;
typedef int IDirectDrawMediaStream ;
typedef int IAMMultiMediaStream ;
typedef int * HRESULT ;


 int AMMSF_ADDDEFAULTRENDERER ;
 int EXPECT_REF (int *,int) ;
 scalar_t__ FAILED (int *) ;
 int * IAMMultiMediaStream_AddMediaStream (int *,int *,int *,int ,int *) ;
 int * IAMMultiMediaStream_GetMediaStream (int *,int *,int **) ;
 int * IAMMultiMediaStream_Initialize (int *,int ,int ,int *) ;
 int * IAMMultiMediaStream_OpenFile (int *,int ,int ) ;
 int IAMMultiMediaStream_Release (int *) ;
 int * IDirectDrawMediaStream_CreateSample (int *,int *,int *,int ,int **) ;
 int IDirectDrawMediaStream_Release (int *) ;
 int * IDirectDrawStreamSample_GetSurface (int *,int **,int *) ;
 int IDirectDrawStreamSample_Release (int *) ;
 int * IDirectDrawSurface7_QueryInterface (int ,int *,void**) ;
 int IDirectDrawSurface_Release (int *) ;
 int IID_IDirectDrawMediaStream ;
 int IID_IDirectDrawSurface ;
 int * IMediaStream_QueryInterface (int *,int *,int *) ;
 int IMediaStream_Release (int *) ;
 int MSPID_PrimaryAudio ;
 int MSPID_PrimaryVideo ;
 int STREAMTYPE_READ ;
 int * S_OK ;
 int * create_ammultimediastream () ;
 int create_directdraw () ;
 int filenameW ;
 int ok (int,char*,int *) ;
 scalar_t__ pdd7 ;
 int pdds7 ;
 int release_directdraw () ;

__attribute__((used)) static void test_renderfile(void)
{
    IAMMultiMediaStream *pams;
    HRESULT hr;
    IMediaStream *pvidstream = ((void*)0);
    IDirectDrawMediaStream *pddstream = ((void*)0);
    IDirectDrawStreamSample *pddsample = ((void*)0);
    IDirectDrawSurface *surface;
    RECT rect;

    if (!(pams = create_ammultimediastream()))
        return;
    if (!create_directdraw())
    {
        IAMMultiMediaStream_Release(pams);
        return;
    }

    hr = IAMMultiMediaStream_Initialize(pams, STREAMTYPE_READ, 0, ((void*)0));
    ok(hr==S_OK, "IAMMultiMediaStream_Initialize returned: %x\n", hr);

    hr = IAMMultiMediaStream_AddMediaStream(pams, (IUnknown*)pdd7, &MSPID_PrimaryVideo, 0, ((void*)0));
    ok(hr==S_OK, "IAMMultiMediaStream_AddMediaStream returned: %x\n", hr);

    hr = IAMMultiMediaStream_AddMediaStream(pams, ((void*)0), &MSPID_PrimaryAudio, AMMSF_ADDDEFAULTRENDERER, ((void*)0));
    ok(hr==S_OK, "IAMMultiMediaStream_AddMediaStream returned: %x\n", hr);

    hr = IAMMultiMediaStream_OpenFile(pams, filenameW, 0);
    ok(hr==S_OK, "IAMMultiMediaStream_OpenFile returned: %x\n", hr);

    hr = IAMMultiMediaStream_GetMediaStream(pams, &MSPID_PrimaryVideo, &pvidstream);
    ok(hr==S_OK, "IAMMultiMediaStream_GetMediaStream returned: %x\n", hr);
    if (FAILED(hr)) goto error;

    hr = IMediaStream_QueryInterface(pvidstream, &IID_IDirectDrawMediaStream, (LPVOID*)&pddstream);
    ok(hr==S_OK, "IMediaStream_QueryInterface returned: %x\n", hr);
    if (FAILED(hr)) goto error;

    hr = IDirectDrawMediaStream_CreateSample(pddstream, ((void*)0), ((void*)0), 0, &pddsample);
    ok(hr == S_OK, "IDirectDrawMediaStream_CreateSample returned: %x\n", hr);

    surface = ((void*)0);
    hr = IDirectDrawStreamSample_GetSurface(pddsample, &surface, &rect);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(surface == ((void*)0), "got %p\n", surface);
    IDirectDrawStreamSample_Release(pddsample);

    hr = IDirectDrawSurface7_QueryInterface(pdds7, &IID_IDirectDrawSurface, (void**)&surface);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    EXPECT_REF(surface, 1);
    hr = IDirectDrawMediaStream_CreateSample(pddstream, surface, ((void*)0), 0, &pddsample);
    ok(hr == S_OK, "IDirectDrawMediaStream_CreateSample returned: %x\n", hr);
    EXPECT_REF(surface, 2);
    IDirectDrawStreamSample_Release(pddsample);
    IDirectDrawSurface_Release(surface);

error:
    if (pddstream)
        IDirectDrawMediaStream_Release(pddstream);
    if (pvidstream)
        IMediaStream_Release(pvidstream);

    release_directdraw();
    IAMMultiMediaStream_Release(pams);
}
