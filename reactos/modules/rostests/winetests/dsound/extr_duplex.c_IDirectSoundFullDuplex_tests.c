
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wfex ;
struct TYPE_7__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int dwSize; int dwBufferBytes; struct TYPE_7__* lpwfxFormat; int dwFlags; int wFormatTag; } ;
typedef TYPE_1__ WAVEFORMATEX ;
typedef int * LPDIRECTSOUNDFULLDUPLEX ;
typedef int LPDIRECTSOUNDCAPTUREBUFFER8 ;
typedef int LPDIRECTSOUNDBUFFER8 ;
typedef scalar_t__ HRESULT ;
typedef int DSCBufferDesc ;
typedef TYPE_1__ DSCBUFFERDESC ;
typedef int DSBufferDesc ;
typedef TYPE_1__ DSBUFFERDESC ;


 scalar_t__ CLASS_E_CLASSNOTAVAILABLE ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectSoundFullDuplex ;
 int CLSID_DirectSoundPrivate ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int DSBCAPS_GLOBALFOCUS ;
 int DSCBCAPS_WAVEMAPPED ;
 int DSDEVID_DefaultCapture ;
 int DSDEVID_DefaultPlayback ;
 int DSDEVID_DefaultVoiceCapture ;
 int DSDEVID_DefaultVoicePlayback ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_INVALIDCALL ;
 scalar_t__ DSERR_NODRIVER ;
 int DSSCL_EXCLUSIVE ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_NOINTERFACE ;
 int FALSE ;
 int IDirectSoundFullDuplex_Release (int *) ;
 int IDirectSoundFullDuplex_test (int *,int ,int *,int *) ;
 int IID_IDirectSoundFullDuplex ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 int WAVE_FORMAT_PCM ;
 int ZeroMemory (TYPE_1__*,int) ;
 int get_hwnd () ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDirectSoundFullDuplexCreate (int *,int *,TYPE_1__*,TYPE_1__*,int ,int ,int **,int *,int *,int *) ;
 int trace (char*) ;

__attribute__((used)) static void IDirectSoundFullDuplex_tests(void)
{
    HRESULT rc;
    LPDIRECTSOUNDFULLDUPLEX dsfdo = ((void*)0);
    DSCBUFFERDESC DSCBufferDesc;
    DSBUFFERDESC DSBufferDesc;
    LPDIRECTSOUNDCAPTUREBUFFER8 pDSCBuffer8;
    LPDIRECTSOUNDBUFFER8 pDSBuffer8;
    WAVEFORMATEX wfex;

    trace("Testing IDirectSoundFullDuplex\n");


    rc=CoCreateInstance(&CLSID_DirectSoundFullDuplex, ((void*)0),
                        CLSCTX_INPROC_SERVER, &IID_IDirectSoundFullDuplex,
                        (void**)&dsfdo);
    ok(rc==S_OK||rc==REGDB_E_CLASSNOTREG||rc==CLASS_E_CLASSNOTAVAILABLE,
       "CoCreateInstance(CLSID_DirectSoundFullDuplex) failed: 0x%08x\n", rc);
    if (rc==REGDB_E_CLASSNOTREG) {
        trace("  Class Not Registered\n");
        return;
    } else if (rc==CLASS_E_CLASSNOTAVAILABLE) {
        trace("  Class Not Available\n");
        return;
    }
    if (dsfdo)
        IDirectSoundFullDuplex_test(dsfdo, FALSE, ((void*)0), ((void*)0));



    rc=CoCreateInstance(&CLSID_DirectSoundFullDuplex, ((void*)0),
                        CLSCTX_INPROC_SERVER, &IID_IDirectSoundFullDuplex,
                        (void**)&dsfdo);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSoundFullDuplex) failed: 0x%08x\n", rc);
    if (dsfdo)
        IDirectSoundFullDuplex_test(dsfdo, FALSE, &DSDEVID_DefaultCapture,
                                    &DSDEVID_DefaultPlayback);



    rc=CoCreateInstance(&CLSID_DirectSoundFullDuplex, ((void*)0),
                        CLSCTX_INPROC_SERVER, &IID_IDirectSoundFullDuplex,
                        (void**)&dsfdo);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSoundFullDuplex) failed: 0x%08x\n", rc);
    if (dsfdo)
        IDirectSoundFullDuplex_test(dsfdo, FALSE, &DSDEVID_DefaultVoiceCapture,
                                    &DSDEVID_DefaultVoicePlayback);



    rc=CoCreateInstance(&CLSID_DirectSoundFullDuplex, ((void*)0),
                        CLSCTX_INPROC_SERVER, &CLSID_DirectSoundPrivate,
                        (void**)&dsfdo);
    ok(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSoundFullDuplex,CLSID_DirectSoundPrivate) "
       "should have failed: 0x%08x\n", rc);

    ZeroMemory(&wfex, sizeof(wfex));
    wfex.wFormatTag = WAVE_FORMAT_PCM;
    wfex.nChannels = 1;
    wfex.nSamplesPerSec = 8000;
    wfex.wBitsPerSample = 16;
    wfex.nBlockAlign = (wfex.wBitsPerSample * wfex.nChannels) / 8;
    wfex.nAvgBytesPerSec = wfex.nSamplesPerSec * wfex.nBlockAlign;

    ZeroMemory(&DSCBufferDesc, sizeof(DSCBufferDesc));
    DSCBufferDesc.dwSize = sizeof(DSCBufferDesc);
    DSCBufferDesc.dwFlags = DSCBCAPS_WAVEMAPPED;
    DSCBufferDesc.dwBufferBytes = 8192;
    DSCBufferDesc.lpwfxFormat = &wfex;

    ZeroMemory(&DSBufferDesc, sizeof(DSBufferDesc));
    DSBufferDesc.dwSize = sizeof(DSBufferDesc);
    DSBufferDesc.dwFlags = DSBCAPS_GLOBALFOCUS;
    DSBufferDesc.dwBufferBytes = 8192;
    DSBufferDesc.lpwfxFormat = &wfex;


    rc=pDirectSoundFullDuplexCreate(((void*)0),((void*)0),&DSCBufferDesc,&DSBufferDesc,
                                    get_hwnd(),DSSCL_EXCLUSIVE ,&dsfdo,&pDSCBuffer8,
                                    &pDSBuffer8,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL||rc==DSERR_INVALIDCALL,
       "DirectSoundFullDuplexCreate(NULL,NULL) failed: %08x\n",rc);
    if (rc==S_OK && dsfdo)
        IDirectSoundFullDuplex_test(dsfdo, TRUE, ((void*)0), ((void*)0));


    rc=pDirectSoundFullDuplexCreate(&DSDEVID_DefaultCapture,
                                    &DSDEVID_DefaultPlayback,&DSCBufferDesc,
                                    &DSBufferDesc,get_hwnd(),DSSCL_EXCLUSIVE,&dsfdo,
                                    &pDSCBuffer8,&pDSBuffer8,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL||rc==DSERR_INVALIDCALL,
       "DirectSoundFullDuplexCreate(DSDEVID_DefaultCapture,"
       "DSDEVID_DefaultPlayback) failed: %08x\n", rc);
    if (rc==DS_OK && dsfdo)
        IDirectSoundFullDuplex_test(dsfdo, TRUE, ((void*)0), ((void*)0));


    rc=pDirectSoundFullDuplexCreate(&DSDEVID_DefaultVoiceCapture,
                                    &DSDEVID_DefaultVoicePlayback,
                                    &DSCBufferDesc,&DSBufferDesc,get_hwnd(),DSSCL_EXCLUSIVE,
                                    &dsfdo,&pDSCBuffer8,&pDSBuffer8,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL||rc==DSERR_INVALIDCALL,
       "DirectSoundFullDuplexCreate(DSDEVID_DefaultVoiceCapture,"
       "DSDEVID_DefaultVoicePlayback) failed: %08x\n", rc);
    if (rc==DS_OK && dsfdo)
        IDirectSoundFullDuplex_test(dsfdo, TRUE, ((void*)0), ((void*)0));


    rc=pDirectSoundFullDuplexCreate(&DSDEVID_DefaultVoicePlayback,
                                    &DSDEVID_DefaultVoiceCapture,
                                    &DSCBufferDesc,&DSBufferDesc,get_hwnd(),DSSCL_EXCLUSIVE,
                                    &dsfdo,&pDSCBuffer8,&pDSBuffer8,((void*)0));
    ok(rc==DSERR_NODRIVER||rc==DSERR_INVALIDCALL,
       "DirectSoundFullDuplexCreate(DSDEVID_DefaultVoicePlayback,"
       "DSDEVID_DefaultVoiceCapture) should have failed: %08x\n", rc);
    if (rc==DS_OK && dsfdo)
        IDirectSoundFullDuplex_Release(dsfdo);
}
