
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bufdesc ;
struct TYPE_6__ {int nAvgBytesPerSec; int nBlockAlign; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_7__ {int dwSize; int dwFlags; TYPE_1__* lpwfxFormat; int dwBufferBytes; } ;
typedef int LPGUID ;
typedef int * LPDIRECTSOUNDBUFFER ;
typedef int * LPDIRECTSOUND3DBUFFER ;
typedef int * LPDIRECTSOUND ;
typedef int HRESULT ;
typedef TYPE_2__ DSBUFFERDESC ;


 int BUFFER_LEN ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectSound ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int DSBCAPS_CTRL3D ;
 int DSBCAPS_GETCURRENTPOSITION2 ;
 int DSERR_ALLOCATED ;
 int DSERR_CONTROLUNAVAIL ;
 int DSERR_GENERIC ;
 int DSERR_INVALIDPARAM ;
 int DSERR_NODRIVER ;
 int DS_OK ;
 int E_FAIL ;
 int FALSE ;
 int IDirectSound3DBuffer_AddRef (int *) ;
 int IDirectSoundBuffer_AddRef (int *) ;
 int IDirectSound_CreateSoundBuffer (int *,TYPE_2__*,int **,int *) ;
 int IDirectSound_QueryInterface (int *,int *,void**) ;
 int IDirectSound_Release (int *) ;
 int IDirectSound_test (int *,int ,int ) ;
 int IID_IDirectSound ;
 int IID_IDirectSound3DBuffer ;
 int S_OK ;
 int TRUE ;
 int WAVE_FORMAT_PCM ;
 int ZeroMemory (TYPE_2__*,int) ;
 int align (int,int ) ;
 scalar_t__ broken (int) ;
 int init_format (TYPE_1__*,int ,int,int,int) ;
 int ok (int,char*,int,...) ;
 int pDirectSoundCreate (int ,int **,int *) ;

__attribute__((used)) static HRESULT test_dsound(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=((void*)0);
    int ref;


    rc=pDirectSoundCreate(lpGuid,0,((void*)0));
    ok(rc==DSERR_INVALIDPARAM,"DirectSoundCreate() should have returned "
       "DSERR_INVALIDPARAM, returned: %08x\n",rc);


    rc=pDirectSoundCreate(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;


    IDirectSound_test(dso, TRUE, lpGuid);


    rc=CoCreateInstance(&CLSID_DirectSound, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        IDirectSound_test(dso, FALSE, lpGuid);


    rc=pDirectSoundCreate(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK,"DirectSoundCreate() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUND dso1=((void*)0);


        rc=pDirectSoundCreate(lpGuid,&dso1,((void*)0));
        ok(rc==DS_OK,"DirectSoundCreate() failed: %08x\n",rc);
        if (rc==DS_OK) {

            ref=IDirectSound_Release(dso1);
            ok(ref==0,"IDirectSound_Release() has %d references, should have "
               "0\n",ref);
            ok(dso!=dso1,"DirectSound objects should be unique: dso=%p,dso1=%p\n",dso,dso1);
        }


        ref=IDirectSound_Release(dso);
        ok(ref==0,"IDirectSound_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;


    rc=pDirectSoundCreate(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK,"DirectSoundCreate() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUNDBUFFER secondary;
        DSBUFFERDESC bufdesc;
        WAVEFORMATEX wfx;

        init_format(&wfx,WAVE_FORMAT_PCM,11025,8,1);
        ZeroMemory(&bufdesc, sizeof(bufdesc));
        bufdesc.dwSize=sizeof(bufdesc);
        bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2 | DSBCAPS_CTRL3D;
        bufdesc.dwBufferBytes=align(wfx.nAvgBytesPerSec*BUFFER_LEN/1000,
                                    wfx.nBlockAlign);
        bufdesc.lpwfxFormat=&wfx;
        rc=IDirectSound_CreateSoundBuffer(dso,&bufdesc,&secondary,((void*)0));
        ok((rc==DS_OK && secondary!=((void*)0)) || broken(rc == DSERR_CONTROLUNAVAIL),
           "IDirectSound_CreateSoundBuffer() failed to create a secondary "
           "buffer %08x\n",rc);
        if (rc==DS_OK && secondary!=((void*)0)) {
            LPDIRECTSOUND3DBUFFER buffer3d;
            rc=IDirectSound_QueryInterface(secondary, &IID_IDirectSound3DBuffer,
                                           (void **)&buffer3d);
            ok(rc==DS_OK && buffer3d!=((void*)0),"IDirectSound_QueryInterface() "
               "failed: %08x\n",rc);
            if (rc==DS_OK && buffer3d!=((void*)0)) {
                ref=IDirectSound3DBuffer_AddRef(buffer3d);
                ok(ref==2,"IDirectSound3DBuffer_AddRef() has %d references, "
                   "should have 2\n",ref);
            }
            ref=IDirectSoundBuffer_AddRef(secondary);
            ok(ref==2,"IDirectSoundBuffer_AddRef() has %d references, "
               "should have 2\n",ref);
        }

        ref=IDirectSound_Release(dso);
        ok(ref==0,"IDirectSound_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;

    return DS_OK;
}
