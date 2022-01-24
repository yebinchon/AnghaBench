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
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  int /*<<< orphan*/ * LPCLASSFACTORY ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectSound8 ; 
 int /*<<< orphan*/  CLSID_DirectSoundPrivate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  DSDEVID_DefaultPlayback ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoiceCapture ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoicePlayback ; 
 scalar_t__ DSERR_ALLOCATED ; 
 scalar_t__ DSERR_NODRIVER ; 
 scalar_t__ DS_OK ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IDirectSound8 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=NULL;
    LPCLASSFACTORY cf=NULL;

    FUNC5("Testing IDirectSound8\n");

    rc=FUNC1(&CLSID_DirectSound8, CLSCTX_INPROC_SERVER, NULL,
                        &IID_IClassFactory, (void**)&cf);
    FUNC3(rc==S_OK,"CoGetClassObject(CLSID_DirectSound8, IID_IClassFactory) "
       "failed: %08x\n", rc);

    rc=FUNC1(&CLSID_DirectSound8, CLSCTX_INPROC_SERVER, NULL,
                        &IID_IUnknown, (void**)&cf);
    FUNC3(rc==S_OK,"CoGetClassObject(CLSID_DirectSound8, IID_IUnknown) "
       "failed: %08x\n", rc);

    /* try the COM class factory method of creation with no device specified */
    rc=FUNC0(&CLSID_DirectSound8, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    FUNC3(rc==S_OK||rc==REGDB_E_CLASSNOTREG,"CoCreateInstance() failed: %08x\n", rc);
    if (rc==REGDB_E_CLASSNOTREG) {
        FUNC5("  Class Not Registered\n");
        return;
    }
    if (dso)
        FUNC2(dso, FALSE, NULL);

    /* try the COM class factory method of creation with default playback
     *  device specified */
    rc=FUNC0(&CLSID_DirectSound8, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    FUNC3(rc==S_OK,"CoCreateInstance(CLSID_DirectSound8) failed: %08x\n", rc);
    if (dso)
        FUNC2(dso, FALSE, &DSDEVID_DefaultPlayback);

    /* try the COM class factory method of creation with default voice
     * playback device specified */
    rc=FUNC0(&CLSID_DirectSound8, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    FUNC3(rc==S_OK,"CoCreateInstance(CLSID_DirectSound8) failed: %08x\n", rc);
    if (dso)
        FUNC2(dso, FALSE, &DSDEVID_DefaultVoicePlayback);

    /* try the COM class factory method of creation with a bad
     * IID specified */
    rc=FUNC0(&CLSID_DirectSound8, NULL, CLSCTX_INPROC_SERVER,
                        &CLSID_DirectSoundPrivate, (void**)&dso);
    FUNC3(rc==E_NOINTERFACE,
       "CoCreateInstance(CLSID_DirectSound8,CLSID_DirectSoundPrivate) "
       "should have failed: %08x\n",rc);

    /* try the COM class factory method of creation with a bad
     * GUID and IID specified */
    rc=FUNC0(&CLSID_DirectSoundPrivate, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    FUNC3(rc==REGDB_E_CLASSNOTREG,
       "CoCreateInstance(CLSID_DirectSoundPrivate,IID_IDirectSound8) "
       "should have failed: %08x\n",rc);

    /* try with no device specified */
    rc=FUNC4(NULL,&dso,NULL);
    FUNC3(rc==S_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        FUNC2(dso, TRUE, NULL);

    /* try with default playback device specified */
    rc=FUNC4(&DSDEVID_DefaultPlayback,&dso,NULL);
    FUNC3(rc==S_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        FUNC2(dso, TRUE, NULL);

    /* try with default voice playback device specified */
    rc=FUNC4(&DSDEVID_DefaultVoicePlayback,&dso,NULL);
    FUNC3(rc==S_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK && dso)
        FUNC2(dso, TRUE, NULL);

    /* try with a bad device specified */
    rc=FUNC4(&DSDEVID_DefaultVoiceCapture,&dso,NULL);
    FUNC3(rc==DSERR_NODRIVER,"DirectSoundCreate8(DSDEVID_DefaultVoiceCapture) "
       "should have failed: %08x\n",rc);
}