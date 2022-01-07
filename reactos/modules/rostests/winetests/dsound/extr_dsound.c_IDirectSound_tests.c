
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCLASSFACTORY ;
typedef int IUnknown ;
typedef int IDirectSound ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CLASS_E_NOAGGREGATION ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectSound ;
 int CLSID_DirectSoundPrivate ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 int DSDEVID_DefaultPlayback ;
 int DSDEVID_DefaultVoiceCapture ;
 int DSDEVID_DefaultVoicePlayback ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_NOINTERFACE ;
 int FALSE ;
 int IDirectSound_Release (int *) ;
 int IDirectSound_test (int *,int ,int *) ;
 int IID_IClassFactory ;
 int IID_IDirectSound ;
 int IID_IUnknown ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDirectSoundCreate (int *,int **,int *) ;
 int trace (char*) ;

__attribute__((used)) static void IDirectSound_tests(void)
{
    HRESULT rc;
    IDirectSound *dso=(IDirectSound*)0xdeadbeef;
    LPCLASSFACTORY cf=((void*)0);

    trace("Testing IDirectSound\n");

    rc=CoGetClassObject(&CLSID_DirectSound, CLSCTX_INPROC_SERVER, ((void*)0),
                        &IID_IClassFactory, (void**)&cf);
    ok(rc==S_OK,"CoGetClassObject(CLSID_DirectSound, IID_IClassFactory) "
       "failed: %08x\n", rc);

    rc=CoGetClassObject(&CLSID_DirectSound, CLSCTX_INPROC_SERVER, ((void*)0),
                        &IID_IUnknown, (void**)&cf);
    ok(rc==S_OK,"CoGetClassObject(CLSID_DirectSound, IID_IUnknown) "
       "failed: %08x\n", rc);


    rc=CoCreateInstance(&CLSID_DirectSound, (IUnknown*)&dso, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    ok(rc==CLASS_E_NOAGGREGATION || broken(rc==DSERR_INVALIDPARAM),
       "DirectMusicPerformance create failed: %08x, expected CLASS_E_NOAGGREGATION\n", rc);


    rc=CoCreateInstance(&CLSID_DirectSound, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        IDirectSound_test(dso, FALSE, ((void*)0));



    rc=CoCreateInstance(&CLSID_DirectSound, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        IDirectSound_test(dso, FALSE, &DSDEVID_DefaultPlayback);



    rc=CoCreateInstance(&CLSID_DirectSound, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        IDirectSound_test(dso, FALSE, &DSDEVID_DefaultVoicePlayback);



    rc=CoCreateInstance(&CLSID_DirectSound, ((void*)0), CLSCTX_INPROC_SERVER,
                        &CLSID_DirectSoundPrivate, (void**)&dso);
    ok(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSound,CLSID_DirectSoundPrivate) "
       "should have failed: %08x\n",rc);



    rc=CoCreateInstance(&CLSID_DirectSoundPrivate, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    ok(rc==REGDB_E_CLASSNOTREG,
       "CoCreateInstance(CLSID_DirectSoundPrivate,IID_IDirectSound) "
       "should have failed: %08x\n",rc);


    rc=pDirectSoundCreate(((void*)0),&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate(NULL) failed: %08x\n",rc);
    if (rc==S_OK && dso)
        IDirectSound_test(dso, TRUE, ((void*)0));


    rc=pDirectSoundCreate(&DSDEVID_DefaultPlayback,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate(DSDEVID_DefaultPlayback) failed: %08x\n", rc);
    if (rc==DS_OK && dso)
        IDirectSound_test(dso, TRUE, ((void*)0));


    rc=pDirectSoundCreate(&DSDEVID_DefaultVoicePlayback,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate(DSDEVID_DefaultVoicePlayback) failed: %08x\n", rc);
    if (rc==DS_OK && dso)
        IDirectSound_test(dso, TRUE, ((void*)0));


    rc=pDirectSoundCreate(&DSDEVID_DefaultVoiceCapture,&dso,((void*)0));
    ok(rc==DSERR_NODRIVER,"DirectSoundCreate(DSDEVID_DefaultVoiceCapture) "
       "should have failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        IDirectSound_Release(dso);
}
