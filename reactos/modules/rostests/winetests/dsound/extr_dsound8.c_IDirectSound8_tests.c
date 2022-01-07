
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPDIRECTSOUND8 ;
typedef int * LPCLASSFACTORY ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectSound8 ;
 int CLSID_DirectSoundPrivate ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 int DSDEVID_DefaultPlayback ;
 int DSDEVID_DefaultVoiceCapture ;
 int DSDEVID_DefaultVoicePlayback ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_NOINTERFACE ;
 int FALSE ;
 int IDirectSound8_test (int *,int ,int *) ;
 int IID_IClassFactory ;
 int IID_IDirectSound8 ;
 int IID_IUnknown ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDirectSoundCreate8 (int *,int **,int *) ;
 int trace (char*) ;

__attribute__((used)) static void IDirectSound8_tests(void)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=((void*)0);
    LPCLASSFACTORY cf=((void*)0);

    trace("Testing IDirectSound8\n");

    rc=CoGetClassObject(&CLSID_DirectSound8, CLSCTX_INPROC_SERVER, ((void*)0),
                        &IID_IClassFactory, (void**)&cf);
    ok(rc==S_OK,"CoGetClassObject(CLSID_DirectSound8, IID_IClassFactory) "
       "failed: %08x\n", rc);

    rc=CoGetClassObject(&CLSID_DirectSound8, CLSCTX_INPROC_SERVER, ((void*)0),
                        &IID_IUnknown, (void**)&cf);
    ok(rc==S_OK,"CoGetClassObject(CLSID_DirectSound8, IID_IUnknown) "
       "failed: %08x\n", rc);


    rc=CoCreateInstance(&CLSID_DirectSound8, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    ok(rc==S_OK||rc==REGDB_E_CLASSNOTREG,"CoCreateInstance() failed: %08x\n", rc);
    if (rc==REGDB_E_CLASSNOTREG) {
        trace("  Class Not Registered\n");
        return;
    }
    if (dso)
        IDirectSound8_test(dso, FALSE, ((void*)0));



    rc=CoCreateInstance(&CLSID_DirectSound8, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound8) failed: %08x\n", rc);
    if (dso)
        IDirectSound8_test(dso, FALSE, &DSDEVID_DefaultPlayback);



    rc=CoCreateInstance(&CLSID_DirectSound8, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound8) failed: %08x\n", rc);
    if (dso)
        IDirectSound8_test(dso, FALSE, &DSDEVID_DefaultVoicePlayback);



    rc=CoCreateInstance(&CLSID_DirectSound8, ((void*)0), CLSCTX_INPROC_SERVER,
                        &CLSID_DirectSoundPrivate, (void**)&dso);
    ok(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSound8,CLSID_DirectSoundPrivate) "
       "should have failed: %08x\n",rc);



    rc=CoCreateInstance(&CLSID_DirectSoundPrivate, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    ok(rc==REGDB_E_CLASSNOTREG,
       "CoCreateInstance(CLSID_DirectSoundPrivate,IID_IDirectSound8) "
       "should have failed: %08x\n",rc);


    rc=pDirectSoundCreate8(((void*)0),&dso,((void*)0));
    ok(rc==S_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        IDirectSound8_test(dso, TRUE, ((void*)0));


    rc=pDirectSoundCreate8(&DSDEVID_DefaultPlayback,&dso,((void*)0));
    ok(rc==S_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        IDirectSound8_test(dso, TRUE, ((void*)0));


    rc=pDirectSoundCreate8(&DSDEVID_DefaultVoicePlayback,&dso,((void*)0));
    ok(rc==S_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        IDirectSound8_test(dso, TRUE, ((void*)0));


    rc=pDirectSoundCreate8(&DSDEVID_DefaultVoiceCapture,&dso,((void*)0));
    ok(rc==DSERR_NODRIVER,"DirectSoundCreate8(DSDEVID_DefaultVoiceCapture) "
       "should have failed: %08x\n",rc);
}
