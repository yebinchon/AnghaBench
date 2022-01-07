
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
typedef int * LPDIRECTSOUNDBUFFER8 ;
typedef int * LPDIRECTSOUNDBUFFER ;
typedef int * LPDIRECTSOUND8 ;
typedef int * LPDIRECTSOUND3DBUFFER ;
typedef int IDirectSoundBuffer8 ;
typedef int HRESULT ;
typedef TYPE_2__ DSBUFFERDESC ;


 int BUFFER_LEN ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectSound8 ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int DSBCAPS_CTRL3D ;
 int DSBCAPS_GETCURRENTPOSITION2 ;
 int DSERR_ALLOCATED ;
 int DSERR_GENERIC ;
 int DSERR_INVALIDPARAM ;
 int DSERR_NODRIVER ;
 int DS_OK ;
 int E_FAIL ;
 int FALSE ;
 int IDirectSound3DBuffer_AddRef (int *) ;
 int IDirectSound8_CreateSoundBuffer (int *,TYPE_2__*,int **,int *) ;
 int IDirectSound8_QueryInterface (int *,int *,void**) ;
 int IDirectSound8_Release (int *) ;
 int IDirectSound8_test (int *,int ,int ) ;
 int IDirectSoundBuffer8_AddRef (int *) ;
 int IDirectSoundBuffer_AddRef (int *) ;
 int IID_IDirectSound3DBuffer ;
 int IID_IDirectSound8 ;
 int IID_IDirectSoundBuffer8 ;
 int S_OK ;
 int TRUE ;
 int WAVE_FORMAT_PCM ;
 int ZeroMemory (TYPE_2__*,int) ;
 int align (int,int ) ;
 int init_format (TYPE_1__*,int ,int,int,int) ;
 int ok (int,char*,...) ;
 int pDirectSoundCreate8 (int ,int **,int *) ;

__attribute__((used)) static HRESULT test_dsound8(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=((void*)0);
    int ref;


    rc=pDirectSoundCreate8(lpGuid,0,((void*)0));
    ok(rc==DSERR_INVALIDPARAM,"DirectSoundCreate8() should have returned "
       "DSERR_INVALIDPARAM, returned: %08x\n",rc);


    rc=pDirectSoundCreate8(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;


    IDirectSound8_test(dso, TRUE, lpGuid);


    rc=CoCreateInstance(&CLSID_DirectSound8, ((void*)0), CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    ok(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        IDirectSound8_test(dso, FALSE, lpGuid);


    rc=pDirectSoundCreate8(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK,"DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUND8 dso1=((void*)0);


        rc=pDirectSoundCreate8(lpGuid,&dso1,((void*)0));
        ok(rc==DS_OK,"DirectSoundCreate8() failed: %08x\n",rc);
        if (rc==DS_OK) {

            ref=IDirectSound8_Release(dso1);
            ok(ref==0,"IDirectSound8_Release() has %d references, "
               "should have 0\n",ref);
            ok(dso!=dso1,"DirectSound8 objects should be unique: "
               "dso=%p,dso1=%p\n",dso,dso1);
        }


        ref=IDirectSound8_Release(dso);
        ok(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;


    rc=pDirectSoundCreate8(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK,"DirectSoundCreate8() failed: %08x\n",rc);
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
        rc=IDirectSound8_CreateSoundBuffer(dso,&bufdesc,&secondary,((void*)0));
        ok(rc==DS_OK && secondary!=((void*)0),
           "IDirectSound8_CreateSoundBuffer() failed to create a secondary "
           "buffer: %08x\n",rc);
        if (rc==DS_OK && secondary!=((void*)0)) {
            LPDIRECTSOUND3DBUFFER buffer3d;
            LPDIRECTSOUNDBUFFER8 buffer8;
            rc=IDirectSound8_QueryInterface(secondary,
                                            &IID_IDirectSound3DBuffer,
                                            (void **)&buffer3d);
            ok(rc==DS_OK && buffer3d!=((void*)0),
               "IDirectSound8_QueryInterface() failed: %08x\n", rc);
            if (rc==DS_OK && buffer3d!=((void*)0)) {
                ref=IDirectSound3DBuffer_AddRef(buffer3d);
                ok(ref==2,"IDirectSound3DBuffer_AddRef() has %d references, "
                   "should have 2\n",ref);
            }
            rc=IDirectSound8_QueryInterface(secondary,
                                            &IID_IDirectSoundBuffer8,
                                            (void **)&buffer8);
            if (rc==DS_OK && buffer8!=((void*)0)) {
                ok(buffer8==(IDirectSoundBuffer8*)secondary,
                   "IDirectSoundBuffer8 iface different from IDirectSoundBuffer.\n");
                ref=IDirectSoundBuffer8_AddRef(buffer8);
                ok(ref==3,"IDirectSoundBuffer8_AddRef() has %d references, "
                   "should have 3\n",ref);
            }
            ref=IDirectSoundBuffer_AddRef(secondary);
            ok(ref==4,"IDirectSoundBuffer_AddRef() has %d references, "
               "should have 4\n",ref);
        }

        ref=IDirectSound8_Release(dso);
        ok(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;

    return DS_OK;
}
