
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPDIRECTSOUNDCAPTURE ;
typedef int * LPCLASSFACTORY ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectSoundCapture ;
 int CLSID_DirectSoundPrivate ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 int DSDEVID_DefaultCapture ;
 int DSDEVID_DefaultVoiceCapture ;
 int DSDEVID_DefaultVoicePlayback ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_NOINTERFACE ;
 int FALSE ;
 int IDirectSoundCapture_Release (int *) ;
 int IDirectSoundCapture_test (int *,int ,int *) ;
 int IID_IClassFactory ;
 int IID_IDirectSoundCapture ;
 int IID_IUnknown ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDirectSoundCaptureCreate (int *,int **,int *) ;
 int trace (char*) ;

__attribute__((used)) static void test_capture(void)
{
    HRESULT rc;
    LPDIRECTSOUNDCAPTURE dsco=((void*)0);
    LPCLASSFACTORY cf=((void*)0);

    trace("Testing IDirectSoundCapture\n");

    rc=CoGetClassObject(&CLSID_DirectSoundCapture, CLSCTX_INPROC_SERVER, ((void*)0),
                        &IID_IClassFactory, (void**)&cf);
    ok(rc==S_OK,"CoGetClassObject(CLSID_DirectSoundCapture, IID_IClassFactory) "
       "failed: %08x\n", rc);

    rc=CoGetClassObject(&CLSID_DirectSoundCapture, CLSCTX_INPROC_SERVER, ((void*)0),
                        &IID_IUnknown, (void**)&cf);
    ok(rc==S_OK,"CoGetClassObject(CLSID_DirectSoundCapture, IID_IUnknown) "
       "failed: %08x\n", rc);


    rc=CoCreateInstance(&CLSID_DirectSoundCapture, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSoundCapture, (void**)&dsco);
    ok(rc==S_OK||rc==REGDB_E_CLASSNOTREG,"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\n", rc);
    if (rc==REGDB_E_CLASSNOTREG) {
        trace("  Class Not Registered\n");
        return;
    }
    if (dsco)
        IDirectSoundCapture_test(dsco, FALSE, ((void*)0));



    rc=CoCreateInstance(&CLSID_DirectSoundCapture, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSoundCapture, (void**)&dsco);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\n", rc);
    if (dsco)
        IDirectSoundCapture_test(dsco, FALSE, &DSDEVID_DefaultCapture);



    rc=CoCreateInstance(&CLSID_DirectSoundCapture, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSoundCapture, (void**)&dsco);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\n", rc);
    if (dsco)
        IDirectSoundCapture_test(dsco, FALSE, &DSDEVID_DefaultVoiceCapture);



    rc=CoCreateInstance(&CLSID_DirectSoundCapture, ((void*)0), CLSCTX_INPROC_SERVER,
                        &CLSID_DirectSoundPrivate, (void**)&dsco);
    ok(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSoundCapture,CLSID_DirectSoundPrivate) "
       "should have failed: %08x\n",rc);


    rc=pDirectSoundCaptureCreate(((void*)0),&dsco,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCaptureCreate(NULL) failed: %08x\n",rc);
    if (rc==S_OK && dsco)
        IDirectSoundCapture_test(dsco, TRUE, ((void*)0));


    rc=pDirectSoundCaptureCreate(&DSDEVID_DefaultCapture,&dsco,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCaptureCreate(DSDEVID_DefaultCapture) failed: %08x\n", rc);
    if (rc==DS_OK && dsco)
        IDirectSoundCapture_test(dsco, TRUE, ((void*)0));


    rc=pDirectSoundCaptureCreate(&DSDEVID_DefaultVoiceCapture,&dsco,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCaptureCreate(DSDEVID_DefaultVoiceCapture) failed: %08x\n", rc);
    if (rc==DS_OK && dsco)
        IDirectSoundCapture_test(dsco, TRUE, ((void*)0));


    rc=pDirectSoundCaptureCreate(&DSDEVID_DefaultVoicePlayback,&dsco,((void*)0));
    ok(rc==DSERR_NODRIVER,
       "DirectSoundCaptureCreate(DSDEVID_DefaultVoicePlatback) "
       "should have failed: %08x\n",rc);
    if (rc==DS_OK && dsco)
        IDirectSoundCapture_Release(dsco);
}
