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
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMediaStream ;
typedef  int /*<<< orphan*/  IDirectDrawSurface ;
typedef  int /*<<< orphan*/  IDirectDrawStreamSample ;
typedef  int /*<<< orphan*/  IDirectDrawMediaStream ;
typedef  int /*<<< orphan*/  IAMMultiMediaStream ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AMMSF_ADDDEFAULTRENDERER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirectDrawMediaStream ; 
 int /*<<< orphan*/  IID_IDirectDrawSurface ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSPID_PrimaryAudio ; 
 int /*<<< orphan*/  MSPID_PrimaryVideo ; 
 int /*<<< orphan*/  STREAMTYPE_READ ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  filenameW ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ pdd7 ; 
 int /*<<< orphan*/  pdds7 ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void FUNC19(void)
{
    IAMMultiMediaStream *pams;
    HRESULT hr;
    IMediaStream *pvidstream = NULL;
    IDirectDrawMediaStream *pddstream = NULL;
    IDirectDrawStreamSample *pddsample = NULL;
    IDirectDrawSurface *surface;
    RECT rect;

    if (!(pams = FUNC15()))
        return;
    if (!FUNC16())
    {
        FUNC6(pams);
        return;
    }

    hr = FUNC4(pams, STREAMTYPE_READ, 0, NULL);
    FUNC17(hr==S_OK, "IAMMultiMediaStream_Initialize returned: %x\n", hr);

    hr = FUNC2(pams, (IUnknown*)pdd7, &MSPID_PrimaryVideo, 0, NULL);
    FUNC17(hr==S_OK, "IAMMultiMediaStream_AddMediaStream returned: %x\n", hr);

    hr = FUNC2(pams, NULL, &MSPID_PrimaryAudio, AMMSF_ADDDEFAULTRENDERER, NULL);
    FUNC17(hr==S_OK, "IAMMultiMediaStream_AddMediaStream returned: %x\n", hr);

    hr = FUNC5(pams, filenameW, 0);
    FUNC17(hr==S_OK, "IAMMultiMediaStream_OpenFile returned: %x\n", hr);

    hr = FUNC3(pams, &MSPID_PrimaryVideo, &pvidstream);
    FUNC17(hr==S_OK, "IAMMultiMediaStream_GetMediaStream returned: %x\n", hr);
    if (FUNC1(hr)) goto error;

    hr = FUNC13(pvidstream, &IID_IDirectDrawMediaStream, (LPVOID*)&pddstream);
    FUNC17(hr==S_OK, "IMediaStream_QueryInterface returned: %x\n", hr);
    if (FUNC1(hr)) goto error;

    hr = FUNC7(pddstream, NULL, NULL, 0, &pddsample);
    FUNC17(hr == S_OK, "IDirectDrawMediaStream_CreateSample returned: %x\n", hr);

    surface = NULL;
    hr = FUNC9(pddsample, &surface, &rect);
    FUNC17(hr == S_OK, "got 0x%08x\n", hr);
    FUNC17(surface == NULL, "got %p\n", surface);
    FUNC10(pddsample);

    hr = FUNC11(pdds7, &IID_IDirectDrawSurface, (void**)&surface);
    FUNC17(hr == S_OK, "got 0x%08x\n", hr);

    FUNC0(surface, 1);
    hr = FUNC7(pddstream, surface, NULL, 0, &pddsample);
    FUNC17(hr == S_OK, "IDirectDrawMediaStream_CreateSample returned: %x\n", hr);
    FUNC0(surface, 2);
    FUNC10(pddsample);
    FUNC12(surface);

error:
    if (pddstream)
        FUNC8(pddstream);
    if (pvidstream)
        FUNC14(pvidstream);

    FUNC18();
    FUNC6(pams);
}