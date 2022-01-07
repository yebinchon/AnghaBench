
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int dscaps ;
typedef int bufdesc ;
struct TYPE_6__ {int dwSize; int dwFlags; } ;
typedef int LPGUID ;
typedef int * LPDIRECTSOUNDBUFFER ;
typedef int * LPDIRECTSOUND8 ;
typedef int LONG ;
typedef int HRESULT ;
typedef TYPE_1__ DSCAPS ;
typedef TYPE_1__ DSBUFFERDESC ;


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
 int DSSCL_NORMAL ;
 int DSSCL_PRIORITY ;
 int DS_OK ;
 int IDirectSound8_CreateSoundBuffer (int *,TYPE_1__*,int **,int *) ;
 int IDirectSound8_GetCaps (int *,TYPE_1__*) ;
 int IDirectSound8_Release (int *) ;
 int IDirectSound8_SetCooperativeLevel (int *,int ,int ) ;
 int IDirectSoundBuffer_Release (int *) ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int get_hwnd () ;
 int ok (int,char*,int) ;
 int pDirectSoundCreate8 (int ,int **,int *) ;
 int test_buffer8 (int *,int **,int,int ,int,int ,int,int,double,int ,int *,int ,int ) ;
 int trace (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static HRESULT test_primary8(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=((void*)0);
    LPDIRECTSOUNDBUFFER primary=((void*)0);
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    int ref, i;


    rc=pDirectSoundCreate8(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER,"DirectSoundCreate8() failed: %08x\n", rc);
    if (rc!=DS_OK)
        return rc;


    ZeroMemory(&dscaps, sizeof(dscaps));
    dscaps.dwSize=sizeof(dscaps);
    rc=IDirectSound8_GetCaps(dso,&dscaps);
    ok(rc==DS_OK,"IDirectSound8_GetCaps() failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;



    rc=IDirectSound8_SetCooperativeLevel(dso,get_hwnd(),DSSCL_PRIORITY);
    ok(rc==DS_OK,"IDirectSound8_SetCooperativeLevel(DSSCL_PRIORITY) failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;


    primary=((void*)0);
    ZeroMemory(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER|DSBCAPS_CTRLVOLUME|DSBCAPS_CTRLPAN;
    rc=IDirectSound8_CreateSoundBuffer(dso,&bufdesc,&primary,((void*)0));
    ok((rc==DS_OK && primary!=((void*)0)) || (rc == DSERR_CONTROLUNAVAIL),
       "IDirectSound8_CreateSoundBuffer() failed to create a primary buffer: %08x\n",rc);
    if (rc == DSERR_CONTROLUNAVAIL)
        trace("  No Primary\n");
    else if (rc==DS_OK && primary!=((void*)0)) {
        test_buffer8(dso,&primary,1,TRUE,0,TRUE,0,winetest_interactive &&
                     !(dscaps.dwFlags & DSCAPS_EMULDRIVER),1.0,0,((void*)0),0,0);
        if (winetest_interactive) {
            LONG volume,pan;

            volume = DSBVOLUME_MAX;
            for (i = 0; i < 6; i++) {
                test_buffer8(dso,&primary,1,TRUE,volume,TRUE,0,
                             winetest_interactive &&
                             !(dscaps.dwFlags & DSCAPS_EMULDRIVER),
                             1.0,0,((void*)0),0,0);
                volume -= ((DSBVOLUME_MAX-DSBVOLUME_MIN) / 40);
            }

            pan = DSBPAN_LEFT;
            for (i = 0; i < 7; i++) {
                test_buffer8(dso,&primary,1,TRUE,0,TRUE,pan,
                             winetest_interactive &&
                             !(dscaps.dwFlags & DSCAPS_EMULDRIVER),1.0,0,0,0,0);
                pan += ((DSBPAN_RIGHT-DSBPAN_LEFT) / 6);
            }
        }
        ref=IDirectSoundBuffer_Release(primary);
        ok(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }



    rc=IDirectSound8_SetCooperativeLevel(dso,get_hwnd(),DSSCL_NORMAL);
    ok(rc==DS_OK,"IDirectSound8_SetCooperativeLevel(DSSCL_NORMAL) failed: %08x\n",rc);

EXIT:
    ref=IDirectSound8_Release(dso);
    ok(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}
