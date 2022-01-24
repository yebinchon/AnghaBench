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
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IAudioRenderClient ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IAudioRenderClient ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ullZero ; 

__attribute__((used)) static void FUNC13(void)
{
    IStream *pStream;
    IAudioClient *ac, *acDest;
    IAudioRenderClient *rc, *rcDest;
    WAVEFORMATEX *pwfx;
    HRESULT hr;

    /* IAudioRenderClient */
    hr = FUNC9(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac);
    FUNC12(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC4(ac, &pwfx);
    FUNC12(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC6(ac, AUDCLNT_SHAREMODE_SHARED, 0, 5000000,
            0, pwfx, NULL);
    FUNC12(hr == S_OK, "Initialize failed: %08x\n", hr);

    FUNC1(pwfx);

    hr = FUNC5(ac, &IID_IAudioRenderClient, (void**)&rc);
    FUNC12(hr == S_OK, "GetService failed: %08x\n", hr);
    if(hr != S_OK) {
        FUNC7(ac);
        return;
    }

    hr = FUNC3(NULL, TRUE, &pStream);
    FUNC12(hr == S_OK, "CreateStreamOnHGlobal failed 0x%08x\n", hr);

    /* marshal IAudioClient */

    hr = FUNC0(pStream, &IID_IAudioClient, (IUnknown*)ac, MSHCTX_INPROC, NULL, MSHLFLAGS_NORMAL);
    FUNC12(hr == S_OK, "CoMarshalInterface IAudioClient failed 0x%08x\n", hr);

    FUNC11(pStream, ullZero, STREAM_SEEK_SET, NULL);
    hr = FUNC2(pStream, &IID_IAudioClient, (void **)&acDest);
    FUNC12(hr == S_OK, "CoUnmarshalInterface IAudioClient failed 0x%08x\n", hr);
    if (hr == S_OK)
        FUNC7(acDest);

    FUNC11(pStream, ullZero, STREAM_SEEK_SET, NULL);
    /* marshal IAudioRenderClient */

    hr = FUNC0(pStream, &IID_IAudioRenderClient, (IUnknown*)rc, MSHCTX_INPROC, NULL, MSHLFLAGS_NORMAL);
    FUNC12(hr == S_OK, "CoMarshalInterface IAudioRenderClient failed 0x%08x\n", hr);

    FUNC11(pStream, ullZero, STREAM_SEEK_SET, NULL);
    hr = FUNC2(pStream, &IID_IAudioRenderClient, (void **)&rcDest);
    FUNC12(hr == S_OK, "CoUnmarshalInterface IAudioRenderClient failed 0x%08x\n", hr);
    if (hr == S_OK)
        FUNC8(rcDest);


    FUNC10(pStream);

    FUNC7(ac);
    FUNC8(rc);

}