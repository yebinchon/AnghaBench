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
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDCAPTURE ;
typedef  int /*<<< orphan*/ * LPCLASSFACTORY ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectSoundCapture ; 
 int /*<<< orphan*/  CLSID_DirectSoundPrivate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  DSDEVID_DefaultCapture ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoiceCapture ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoicePlayback ; 
 scalar_t__ DSERR_ALLOCATED ; 
 scalar_t__ DSERR_NODRIVER ; 
 scalar_t__ DS_OK ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IDirectSoundCapture ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    HRESULT rc;
    LPDIRECTSOUNDCAPTURE dsco=NULL;
    LPCLASSFACTORY cf=NULL;

    FUNC6("Testing IDirectSoundCapture\n");

    rc=FUNC1(&CLSID_DirectSoundCapture, CLSCTX_INPROC_SERVER, NULL,
                        &IID_IClassFactory, (void**)&cf);
    FUNC4(rc==S_OK,"CoGetClassObject(CLSID_DirectSoundCapture, IID_IClassFactory) "
       "failed: %08x\n", rc);

    rc=FUNC1(&CLSID_DirectSoundCapture, CLSCTX_INPROC_SERVER, NULL,
                        &IID_IUnknown, (void**)&cf);
    FUNC4(rc==S_OK,"CoGetClassObject(CLSID_DirectSoundCapture, IID_IUnknown) "
       "failed: %08x\n", rc);

    /* try the COM class factory method of creation with no device specified */
    rc=FUNC0(&CLSID_DirectSoundCapture, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSoundCapture, (void**)&dsco);
    FUNC4(rc==S_OK||rc==REGDB_E_CLASSNOTREG,"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\n", rc);
    if (rc==REGDB_E_CLASSNOTREG) {
        FUNC6("  Class Not Registered\n");
        return;
    }
    if (dsco)
        FUNC3(dsco, FALSE, NULL);

    /* try the COM class factory method of creation with default capture
     * device specified */
    rc=FUNC0(&CLSID_DirectSoundCapture, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSoundCapture, (void**)&dsco);
    FUNC4(rc==S_OK,"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\n", rc);
    if (dsco)
        FUNC3(dsco, FALSE, &DSDEVID_DefaultCapture);

    /* try the COM class factory method of creation with default voice
     * capture device specified */
    rc=FUNC0(&CLSID_DirectSoundCapture, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSoundCapture, (void**)&dsco);
    FUNC4(rc==S_OK,"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\n", rc);
    if (dsco)
        FUNC3(dsco, FALSE, &DSDEVID_DefaultVoiceCapture);

    /* try the COM class factory method of creation with a bad
     * IID specified */
    rc=FUNC0(&CLSID_DirectSoundCapture, NULL, CLSCTX_INPROC_SERVER,
                        &CLSID_DirectSoundPrivate, (void**)&dsco);
    FUNC4(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSoundCapture,CLSID_DirectSoundPrivate) "
       "should have failed: %08x\n",rc);

    /* try with no device specified */
    rc=FUNC5(NULL,&dsco,NULL);
    FUNC4(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCaptureCreate(NULL) failed: %08x\n",rc);
    if (rc==S_OK && dsco)
        FUNC3(dsco, TRUE, NULL);

    /* try with default capture device specified */
    rc=FUNC5(&DSDEVID_DefaultCapture,&dsco,NULL);
    FUNC4(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCaptureCreate(DSDEVID_DefaultCapture) failed: %08x\n", rc);
    if (rc==DS_OK && dsco)
        FUNC3(dsco, TRUE, NULL);

    /* try with default voice capture device specified */
    rc=FUNC5(&DSDEVID_DefaultVoiceCapture,&dsco,NULL);
    FUNC4(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCaptureCreate(DSDEVID_DefaultVoiceCapture) failed: %08x\n", rc);
    if (rc==DS_OK && dsco)
        FUNC3(dsco, TRUE, NULL);

    /* try with a bad device specified */
    rc=FUNC5(&DSDEVID_DefaultVoicePlayback,&dsco,NULL);
    FUNC4(rc==DSERR_NODRIVER,
       "DirectSoundCaptureCreate(DSDEVID_DefaultVoicePlatback) "
       "should have failed: %08x\n",rc);
    if (rc==DS_OK && dsco)
        FUNC2(dsco);
}