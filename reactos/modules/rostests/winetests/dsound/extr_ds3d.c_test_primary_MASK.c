#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dscaps ;
typedef  int /*<<< orphan*/  bufdesc ;
struct TYPE_6__ {int dwSize; int dwFlags; } ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND ;
typedef  int LONG ;
typedef  int HRESULT ;
typedef  TYPE_1__ DSCAPS ;
typedef  TYPE_1__ DSBUFFERDESC ;

/* Variables and functions */
 int DSBCAPS_CTRLPAN ; 
 int DSBCAPS_CTRLVOLUME ; 
 int DSBCAPS_PRIMARYBUFFER ; 
 int DSBPAN_LEFT ; 
 int DSBPAN_RIGHT ; 
 int DSBVOLUME_MAX ; 
 int DSBVOLUME_MIN ; 
 int DSCAPS_EMULDRIVER ; 
 int DSERR_CONTROLUNAVAIL ; 
 int DSERR_GENERIC ; 
 int DSERR_NODRIVER ; 
 int /*<<< orphan*/  DSSCL_NORMAL ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 int DS_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static HRESULT FUNC11(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=NULL;
    LPDIRECTSOUNDBUFFER primary=NULL;
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    int ref, i;

    /* Create the DirectSound object */
    rc=FUNC8(lpGuid,&dso,NULL);
    FUNC7(rc==DS_OK||rc==DSERR_NODRIVER,"DirectSoundCreate() failed: %08x\n", rc);
    if (rc!=DS_OK)
        return rc;

    /* Get the device capabilities */
    FUNC5(&dscaps, sizeof(dscaps));
    dscaps.dwSize=sizeof(dscaps);
    rc=FUNC2(dso,&dscaps);
    FUNC7(rc==DS_OK,"IDirectSound_GetCaps() failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;

    /* We must call SetCooperativeLevel before calling CreateSoundBuffer */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_PRIORITY */
    rc=FUNC4(dso,FUNC6(),DSSCL_PRIORITY);
    FUNC7(rc==DS_OK,"IDirectSound_SetCooperativeLevel(DSSCL_PRIORITY) failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;

    /* Testing the primary buffer */
    primary=NULL;
    FUNC5(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER|DSBCAPS_CTRLVOLUME|DSBCAPS_CTRLPAN;
    rc=FUNC1(dso,&bufdesc,&primary,NULL);
    FUNC7((rc==DS_OK && primary!=NULL) || (rc==DSERR_CONTROLUNAVAIL),
       "IDirectSound_CreateSoundBuffer() failed to create a primary buffer: %08x\n",rc);
    if (rc==DSERR_CONTROLUNAVAIL)
        FUNC10("  No Primary\n");
    else if (rc==DS_OK && primary!=NULL) {
        FUNC9(dso,&primary,1,TRUE,0,TRUE,0,winetest_interactive &&
                    !(dscaps.dwFlags & DSCAPS_EMULDRIVER),1.0,0,NULL,0,0,
                    FALSE,0);
        if (winetest_interactive) {
            LONG volume,pan;

            volume = DSBVOLUME_MAX;
            for (i = 0; i < 6; i++) {
                FUNC9(dso,&primary,1,TRUE,volume,TRUE,0,
                            winetest_interactive &&
                            !(dscaps.dwFlags & DSCAPS_EMULDRIVER),
                            1.0,0,NULL,0,0,FALSE,0);
                volume -= ((DSBVOLUME_MAX-DSBVOLUME_MIN) / 40);
            }

            pan = DSBPAN_LEFT;
            for (i = 0; i < 7; i++) {
                FUNC9(dso,&primary,1,TRUE,0,TRUE,pan,
                            winetest_interactive &&
                            !(dscaps.dwFlags & DSCAPS_EMULDRIVER),1.0,0,0,0,0,FALSE,0);
                pan += ((DSBPAN_RIGHT-DSBPAN_LEFT) / 6);
            }
        }
        ref=FUNC0(primary);
        FUNC7(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }

    /* Set the CooperativeLevel back to normal */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_NORMAL */
    rc=FUNC4(dso,FUNC6(),DSSCL_NORMAL);
    FUNC7(rc==DS_OK,"IDirectSound_SetCooperativeLevel(DSSCL_NORMAL) failed: %08x\n", rc);

EXIT:
    ref=FUNC3(dso);
    FUNC7(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}