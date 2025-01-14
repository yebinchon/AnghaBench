
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dscaps ;
struct TYPE_4__ {int dwSize; } ;
typedef int LPVOID ;
typedef int * LPDIRECTSOUND ;
typedef int LPCGUID ;
typedef int IUnknown ;
typedef int IDirectSound8 ;
typedef int IDirectSound ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DSCAPS ;
typedef scalar_t__ BOOL ;


 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_ALREADYINITIALIZED ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DSERR_PRIOLEVELNEEDED ;
 scalar_t__ DSERR_UNINITIALIZED ;
 int DSSCL_PRIORITY ;
 scalar_t__ DSSPEAKER_COMBINED (int ,int ) ;
 int DSSPEAKER_GEOMETRY_NARROW ;
 int DSSPEAKER_GEOMETRY_WIDE ;
 int DSSPEAKER_STEREO ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ FALSE ;
 int IDirectSound8_Release (int *) ;
 scalar_t__ IDirectSound_Compact (int *) ;
 scalar_t__ IDirectSound_GetCaps (int *,TYPE_1__*) ;
 scalar_t__ IDirectSound_GetSpeakerConfig (int *,scalar_t__*) ;
 scalar_t__ IDirectSound_Initialize (int *,int ) ;
 scalar_t__ IDirectSound_QueryInterface (int *,int *,int *) ;
 int IDirectSound_Release (int *) ;
 scalar_t__ IDirectSound_SetCooperativeLevel (int *,int ,int ) ;
 scalar_t__ IDirectSound_SetSpeakerConfig (int *,scalar_t__) ;
 int IID_IDirectSound ;
 int IID_IDirectSound8 ;
 int IID_IUnknown ;
 int ZeroMemory (TYPE_1__*,int) ;
 int get_hwnd () ;
 int ok (int,char*,int) ;
 int trace (char*,...) ;

__attribute__((used)) static void IDirectSound_test(LPDIRECTSOUND dso, BOOL initialized,
                              LPCGUID lpGuid)
{
    HRESULT rc;
    DSCAPS dscaps;
    int ref;
    IUnknown * unknown;
    IDirectSound * ds;
    IDirectSound8 * ds8;
    DWORD speaker_config, new_speaker_config, ref_speaker_config;


    rc=IDirectSound_QueryInterface(dso,&IID_IUnknown,(LPVOID*)&unknown);
    ok(rc==DS_OK,"IDirectSound_QueryInterface(IID_IUnknown) failed: %08x\n", rc);
    if (rc==DS_OK)
        IDirectSound_Release(unknown);

    rc=IDirectSound_QueryInterface(dso,&IID_IDirectSound,(LPVOID*)&ds);
    ok(rc==DS_OK,"IDirectSound_QueryInterface(IID_IDirectSound) failed: %08x\n", rc);
    if (rc==DS_OK)
        IDirectSound_Release(ds);

    rc=IDirectSound_QueryInterface(dso,&IID_IDirectSound8,(LPVOID*)&ds8);
    ok(rc==E_NOINTERFACE,"IDirectSound_QueryInterface(IID_IDirectSound8) "
       "should have failed: %08x\n",rc);
    if (rc==DS_OK)
        IDirectSound8_Release(ds8);

    if (initialized == FALSE) {

        rc=IDirectSound_GetCaps(dso,0);
        ok(rc==DSERR_UNINITIALIZED,"IDirectSound_GetCaps(NULL) "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=IDirectSound_GetCaps(dso,&dscaps);
        ok(rc==DSERR_UNINITIALIZED,"IDirectSound_GetCaps() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=IDirectSound_Compact(dso);
        ok(rc==DSERR_UNINITIALIZED,"IDirectSound_Compact() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=IDirectSound_GetSpeakerConfig(dso,&speaker_config);
        ok(rc==DSERR_UNINITIALIZED,"IDirectSound_GetSpeakerConfig() "
           "should have returned DSERR_UNINITIALIZED, returned: %08x\n", rc);

        rc=IDirectSound_Initialize(dso,lpGuid);
        ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
           "IDirectSound_Initialize() failed: %08x\n",rc);
        if (rc==DSERR_NODRIVER) {
            trace("  No Driver\n");
            goto EXIT;
        } else if (rc==E_FAIL) {
            trace("  No Device\n");
            goto EXIT;
        } else if (rc==DSERR_ALLOCATED) {
            trace("  Already In Use\n");
            goto EXIT;
        }
    }

    rc=IDirectSound_Initialize(dso,lpGuid);
    ok(rc==DSERR_ALREADYINITIALIZED, "IDirectSound_Initialize() "
       "should have returned DSERR_ALREADYINITIALIZED: %08x\n", rc);


    rc=IDirectSound_GetCaps(dso,0);
    ok(rc==DSERR_INVALIDPARAM,"IDirectSound_GetCaps(NULL) "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    ZeroMemory(&dscaps, sizeof(dscaps));


    rc=IDirectSound_GetCaps(dso,&dscaps);
    ok(rc==DSERR_INVALIDPARAM,"IDirectSound_GetCaps() "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    dscaps.dwSize=sizeof(dscaps);


    rc=IDirectSound_GetCaps(dso,&dscaps);
    ok(rc==DS_OK,"IDirectSound_GetCaps() failed: %08x\n",rc);

    rc=IDirectSound_Compact(dso);
    ok(rc==DSERR_PRIOLEVELNEEDED,"IDirectSound_Compact() failed: %08x\n", rc);

    rc=IDirectSound_SetCooperativeLevel(dso,get_hwnd(),DSSCL_PRIORITY);
    ok(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);

    rc=IDirectSound_Compact(dso);
    ok(rc==DS_OK,"IDirectSound_Compact() failed: %08x\n",rc);

    rc=IDirectSound_GetSpeakerConfig(dso,0);
    ok(rc==DSERR_INVALIDPARAM,"IDirectSound_GetSpeakerConfig(NULL) "
       "should have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    rc=IDirectSound_GetSpeakerConfig(dso,&speaker_config);
    ok(rc==DS_OK,"IDirectSound_GetSpeakerConfig() failed: %08x\n", rc);
    ref_speaker_config = speaker_config;

    speaker_config = DSSPEAKER_COMBINED(DSSPEAKER_STEREO,
                                        DSSPEAKER_GEOMETRY_WIDE);
    if (speaker_config == ref_speaker_config)
        speaker_config = DSSPEAKER_COMBINED(DSSPEAKER_STEREO,
                                            DSSPEAKER_GEOMETRY_NARROW);
    if(rc==DS_OK) {
        rc=IDirectSound_SetSpeakerConfig(dso,speaker_config);
        ok(rc==DS_OK,"IDirectSound_SetSpeakerConfig() failed: %08x\n", rc);
    }
    if (rc==DS_OK) {
        rc=IDirectSound_GetSpeakerConfig(dso,&new_speaker_config);
        ok(rc==DS_OK,"IDirectSound_GetSpeakerConfig() failed: %08x\n", rc);
        if (rc==DS_OK && speaker_config!=new_speaker_config)
               trace("IDirectSound_GetSpeakerConfig() failed to set speaker "
               "config: expected 0x%08x, got 0x%08x\n",
               speaker_config,new_speaker_config);
        IDirectSound_SetSpeakerConfig(dso,ref_speaker_config);
    }

EXIT:
    ref=IDirectSound_Release(dso);
    ok(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
}
