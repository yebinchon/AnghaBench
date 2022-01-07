
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dsbcaps ;
typedef int bufdesc ;
struct TYPE_8__ {scalar_t__ nAvgBytesPerSec; int nBlockAlign; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_9__ {int dwSize; scalar_t__ dwBufferBytes; TYPE_1__* lpwfxFormat; int dwFlags; } ;
typedef int LPGUID ;
typedef int * LPDIRECTSOUNDBUFFER ;
typedef int * LPDIRECTSOUND ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ DSBUFFERDESC ;
typedef TYPE_2__ DSBCAPS ;


 int DSBCAPS_GETCURRENTPOSITION2 ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_CONTROLUNAVAIL ;
 scalar_t__ DSERR_GENERIC ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer_GetCaps (int *,TYPE_2__*) ;
 scalar_t__ IDirectSoundBuffer_GetCurrentPosition (int *,scalar_t__*,int *) ;
 int IDirectSoundBuffer_Release (int *) ;
 scalar_t__ IDirectSoundBuffer_SetCurrentPosition (int *,int) ;
 scalar_t__ IDirectSound_CreateSoundBuffer (int *,TYPE_2__*,int **,int *) ;
 int IDirectSound_Release (int *) ;
 int WAVE_FORMAT_PCM ;
 int ZeroMemory (TYPE_2__*,int) ;
 scalar_t__ broken (int) ;
 int init_format (TYPE_1__*,int ,int,int,int) ;
 int ok (int,char*,int,...) ;
 scalar_t__ pDirectSoundCreate (int ,int **,int *) ;

__attribute__((used)) static HRESULT test_block_align(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=((void*)0);
    LPDIRECTSOUNDBUFFER secondary=((void*)0);
    DSBUFFERDESC bufdesc;
    DSBCAPS dsbcaps;
    WAVEFORMATEX wfx;
    DWORD pos, pos2;
    int ref;


    rc=pDirectSoundCreate(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    init_format(&wfx,WAVE_FORMAT_PCM,11025,16,2);
    ZeroMemory(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2;
    bufdesc.dwBufferBytes=wfx.nAvgBytesPerSec + 1;
    bufdesc.lpwfxFormat=&wfx;
    rc=IDirectSound_CreateSoundBuffer(dso,&bufdesc,&secondary,((void*)0));
    ok(rc == DS_OK || broken(rc == DSERR_CONTROLUNAVAIL),
       "IDirectSound_CreateSoundBuffer() should have returned DS_OK, returned: %08x\n", rc);

    if (rc==DS_OK && secondary!=((void*)0)) {
        ZeroMemory(&dsbcaps, sizeof(dsbcaps));
        dsbcaps.dwSize = sizeof(dsbcaps);
        rc=IDirectSoundBuffer_GetCaps(secondary,&dsbcaps);
        ok(rc==DS_OK,"IDirectSoundBuffer_GetCaps() should have returned DS_OK, "
           "returned: %08x\n", rc);
        if (rc==DS_OK && wfx.nBlockAlign > 1)
        {
            ok(dsbcaps.dwBufferBytes==(wfx.nAvgBytesPerSec + wfx.nBlockAlign),
               "Buffer size not a multiple of nBlockAlign: requested %d, "
               "got %d, should be %d\n", bufdesc.dwBufferBytes,
               dsbcaps.dwBufferBytes, wfx.nAvgBytesPerSec + wfx.nBlockAlign);

            rc = IDirectSoundBuffer_SetCurrentPosition(secondary, 0);
            ok(rc == DS_OK, "Could not set position to 0: %08x\n", rc);
            rc = IDirectSoundBuffer_GetCurrentPosition(secondary, &pos, ((void*)0));
            ok(rc == DS_OK, "Could not get position: %08x\n", rc);
            rc = IDirectSoundBuffer_SetCurrentPosition(secondary, 1);
            ok(rc == DS_OK, "Could not set position to 1: %08x\n", rc);
            rc = IDirectSoundBuffer_GetCurrentPosition(secondary, &pos2, ((void*)0));
            ok(rc == DS_OK, "Could not get new position: %08x\n", rc);
            ok(pos == pos2, "Positions not the same! Old position: %d, new position: %d\n", pos, pos2);
        }
        ref=IDirectSoundBuffer_Release(secondary);
        ok(ref==0,"IDirectSoundBuffer_Release() secondary has %d references, "
           "should have 0\n",ref);
    }

    ref=IDirectSound_Release(dso);
    ok(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}
