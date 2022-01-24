#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dscaps ;
struct TYPE_4__ {int dwSize; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDirectSound8 ;
typedef  int /*<<< orphan*/  IDirectSound ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DSCAPS ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ DSERR_ALLOCATED ; 
 scalar_t__ DSERR_ALREADYINITIALIZED ; 
 scalar_t__ DSERR_INVALIDPARAM ; 
 scalar_t__ DSERR_NODRIVER ; 
 scalar_t__ DSERR_PRIOLEVELNEEDED ; 
 scalar_t__ DSERR_UNINITIALIZED ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSSPEAKER_GEOMETRY_NARROW ; 
 int /*<<< orphan*/  DSSPEAKER_GEOMETRY_WIDE ; 
 int /*<<< orphan*/  DSSPEAKER_STEREO ; 
 scalar_t__ DS_OK ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IDirectSound8 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static void FUNC14(LPDIRECTSOUND dso, BOOL initialized,
                              LPCGUID lpGuid)
{
    HRESULT rc;
    DSCAPS dscaps;
    int ref;
    IUnknown * unknown;
    IDirectSound * ds;
    IDirectSound8 * ds8;
    DWORD speaker_config, new_speaker_config, ref_speaker_config;

    /* Try to Query for objects */
    rc=FUNC6(dso,&IID_IUnknown,(LPVOID*)&unknown);
    FUNC12(rc==DS_OK,"IDirectSound_QueryInterface(IID_IUnknown) failed: %08x\n", rc);
    if (rc==DS_OK)
        FUNC7(unknown);

    rc=FUNC6(dso,&IID_IDirectSound,(LPVOID*)&ds);
    FUNC12(rc==DS_OK,"IDirectSound_QueryInterface(IID_IDirectSound) failed: %08x\n", rc);
    if (rc==DS_OK)
        FUNC7(ds);

    rc=FUNC6(dso,&IID_IDirectSound8,(LPVOID*)&ds8);
    FUNC12(rc==E_NOINTERFACE,"IDirectSound_QueryInterface(IID_IDirectSound8) "
       "should have failed: %08x\n",rc);
    if (rc==DS_OK)
        FUNC1(ds8);

    if (initialized == FALSE) {
        /* try uninitialized object */
        rc=FUNC3(dso,0);
        FUNC12(rc==DSERR_UNINITIALIZED,"IDirectSound_GetCaps(NULL) "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=FUNC3(dso,&dscaps);
        FUNC12(rc==DSERR_UNINITIALIZED,"IDirectSound_GetCaps() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=FUNC2(dso);
        FUNC12(rc==DSERR_UNINITIALIZED,"IDirectSound_Compact() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=FUNC4(dso,&speaker_config);
        FUNC12(rc==DSERR_UNINITIALIZED,"IDirectSound_GetSpeakerConfig() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=FUNC5(dso,lpGuid);
        FUNC12(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
           "IDirectSound_Initialize() failed: %08x\n",rc);
        if (rc==DSERR_NODRIVER) {
            FUNC13("  No Driver\n");
            goto EXIT;
        } else if (rc==E_FAIL) {
            FUNC13("  No Device\n");
            goto EXIT;
        } else if (rc==DSERR_ALLOCATED) {
            FUNC13("  Already In Use\n");
            goto EXIT;
        }
    }

    rc=FUNC5(dso,lpGuid);
    FUNC12(rc==DSERR_ALREADYINITIALIZED, "IDirectSound_Initialize() "
       "should have returned DSERR_ALREADYINITIALIZED: %08x\n", rc);

    /* DSOUND: Error: Invalid caps buffer */
    rc=FUNC3(dso,0);
    FUNC12(rc==DSERR_INVALIDPARAM,"IDirectSound_GetCaps(NULL) "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    FUNC10(&dscaps, sizeof(dscaps));

    /* DSOUND: Error: Invalid caps buffer */
    rc=FUNC3(dso,&dscaps);
    FUNC12(rc==DSERR_INVALIDPARAM,"IDirectSound_GetCaps() "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    dscaps.dwSize=sizeof(dscaps);

    /* DSOUND: Running on a certified driver */
    rc=FUNC3(dso,&dscaps);
    FUNC12(rc==DS_OK,"IDirectSound_GetCaps() failed: %08x\n",rc);

    rc=FUNC2(dso);
    FUNC12(rc==DSERR_PRIOLEVELNEEDED,"IDirectSound_Compact() failed: %08x\n", rc);

    rc=FUNC8(dso,FUNC11(),DSSCL_PRIORITY);
    FUNC12(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);

    rc=FUNC2(dso);
    FUNC12(rc==DS_OK,"IDirectSound_Compact() failed: %08x\n",rc);

    rc=FUNC4(dso,0);
    FUNC12(rc==DSERR_INVALIDPARAM,"IDirectSound_GetSpeakerConfig(NULL) "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    rc=FUNC4(dso,&speaker_config);
    FUNC12(rc==DS_OK,"IDirectSound_GetSpeakerConfig() failed: %08x\n", rc);
    ref_speaker_config = speaker_config;

    speaker_config = FUNC0(DSSPEAKER_STEREO,
                                        DSSPEAKER_GEOMETRY_WIDE);
    if (speaker_config == ref_speaker_config)
        speaker_config = FUNC0(DSSPEAKER_STEREO,
                                            DSSPEAKER_GEOMETRY_NARROW);
    if(rc==DS_OK) {
        rc=FUNC9(dso,speaker_config);
        FUNC12(rc==DS_OK,"IDirectSound_SetSpeakerConfig() failed: %08x\n", rc);
    }
    if (rc==DS_OK) {
        rc=FUNC4(dso,&new_speaker_config);
        FUNC12(rc==DS_OK,"IDirectSound_GetSpeakerConfig() failed: %08x\n", rc);
        if (rc==DS_OK && speaker_config!=new_speaker_config)
               FUNC13("IDirectSound_GetSpeakerConfig() failed to set speaker "
               "config: expected 0x%08x, got 0x%08x\n",
               speaker_config,new_speaker_config);
        FUNC9(dso,ref_speaker_config);
    }

EXIT:
    ref=FUNC7(dso);
    FUNC12(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
}