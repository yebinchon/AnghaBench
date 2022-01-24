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
typedef  int /*<<< orphan*/ * LPCLASSFACTORY ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDirectSound ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectSound ; 
 int /*<<< orphan*/  CLSID_DirectSoundPrivate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  DSDEVID_DefaultPlayback ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoiceCapture ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoicePlayback ; 
 scalar_t__ DSERR_ALLOCATED ; 
 scalar_t__ DSERR_INVALIDPARAM ; 
 scalar_t__ DSERR_NODRIVER ; 
 scalar_t__ DS_OK ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT rc;
    IDirectSound *dso=(IDirectSound*)0xdeadbeef;
    LPCLASSFACTORY cf=NULL;

    FUNC7("Testing IDirectSound\n");

    rc=FUNC1(&CLSID_DirectSound, CLSCTX_INPROC_SERVER, NULL,
                        &IID_IClassFactory, (void**)&cf);
    FUNC5(rc==S_OK,"CoGetClassObject(CLSID_DirectSound, IID_IClassFactory) "
       "failed: %08x\n", rc);

    rc=FUNC1(&CLSID_DirectSound, CLSCTX_INPROC_SERVER, NULL,
                        &IID_IUnknown, (void**)&cf);
    FUNC5(rc==S_OK,"CoGetClassObject(CLSID_DirectSound, IID_IUnknown) "
       "failed: %08x\n", rc);

    /* COM aggregation */
    rc=FUNC0(&CLSID_DirectSound, (IUnknown*)&dso, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    FUNC5(rc==CLASS_E_NOAGGREGATION || FUNC4(rc==DSERR_INVALIDPARAM),
       "DirectMusicPerformance create failed: %08x, expected CLASS_E_NOAGGREGATION\n", rc);

    /* try the COM class factory method of creation with no device specified */
    rc=FUNC0(&CLSID_DirectSound, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    FUNC5(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        FUNC3(dso, FALSE, NULL);

    /* try the COM class factory method of creation with default playback
     * device specified */
    rc=FUNC0(&CLSID_DirectSound, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    FUNC5(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        FUNC3(dso, FALSE, &DSDEVID_DefaultPlayback);

    /* try the COM class factory method of creation with default voice
     * playback device specified */
    rc=FUNC0(&CLSID_DirectSound, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    FUNC5(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        FUNC3(dso, FALSE, &DSDEVID_DefaultVoicePlayback);

    /* try the COM class factory method of creation with a bad
     * IID specified */
    rc=FUNC0(&CLSID_DirectSound, NULL, CLSCTX_INPROC_SERVER,
                        &CLSID_DirectSoundPrivate, (void**)&dso);
    FUNC5(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSound,CLSID_DirectSoundPrivate) "
       "should have failed: %08x\n",rc);

    /* try the COM class factory method of creation with a bad
     * GUID and IID specified */
    rc=FUNC0(&CLSID_DirectSoundPrivate, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    FUNC5(rc==REGDB_E_CLASSNOTREG,
       "CoCreateInstance(CLSID_DirectSoundPrivate,IID_IDirectSound) "
       "should have failed: %08x\n",rc);

    /* try with no device specified */
    rc=FUNC6(NULL,&dso,NULL);
    FUNC5(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate(NULL) failed: %08x\n",rc);
    if (rc==S_OK && dso)
        FUNC3(dso, TRUE, NULL);

    /* try with default playback device specified */
    rc=FUNC6(&DSDEVID_DefaultPlayback,&dso,NULL);
    FUNC5(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate(DSDEVID_DefaultPlayback) failed: %08x\n", rc);
    if (rc==DS_OK && dso)
        FUNC3(dso, TRUE, NULL);

    /* try with default voice playback device specified */
    rc=FUNC6(&DSDEVID_DefaultVoicePlayback,&dso,NULL);
    FUNC5(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate(DSDEVID_DefaultVoicePlayback) failed: %08x\n", rc);
    if (rc==DS_OK && dso)
        FUNC3(dso, TRUE, NULL);

    /* try with a bad device specified */
    rc=FUNC6(&DSDEVID_DefaultVoiceCapture,&dso,NULL);
    FUNC5(rc==DSERR_NODRIVER,"DirectSoundCreate(DSDEVID_DefaultVoiceCapture) "
       "should have failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        FUNC2(dso);
}