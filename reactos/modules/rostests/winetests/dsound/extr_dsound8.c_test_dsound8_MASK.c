#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bufdesc ;
struct TYPE_6__ {int nAvgBytesPerSec; int /*<<< orphan*/  nBlockAlign; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
struct TYPE_7__ {int dwSize; int dwFlags; TYPE_1__* lpwfxFormat; int /*<<< orphan*/  dwBufferBytes; } ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER8 ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND3DBUFFER ;
typedef  int /*<<< orphan*/  IDirectSoundBuffer8 ;
typedef  int HRESULT ;
typedef  TYPE_2__ DSBUFFERDESC ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectSound8 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int DSBCAPS_CTRL3D ; 
 int DSBCAPS_GETCURRENTPOSITION2 ; 
 int DSERR_ALLOCATED ; 
 int DSERR_GENERIC ; 
 int DSERR_INVALIDPARAM ; 
 int DSERR_NODRIVER ; 
 int DS_OK ; 
 int E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirectSound3DBuffer ; 
 int /*<<< orphan*/  IID_IDirectSound8 ; 
 int /*<<< orphan*/  IID_IDirectSoundBuffer8 ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=NULL;
    int ref;

    /* DSOUND: Error: Invalid interface buffer */
    rc=FUNC12(lpGuid,0,NULL);
    FUNC11(rc==DSERR_INVALIDPARAM,"DirectSoundCreate8() should have returned "
       "DSERR_INVALIDPARAM, returned: %08x\n",rc);

    /* Create the DirectSound8 object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    /* Try the enumerated device */
    FUNC5(dso, TRUE, lpGuid);

    /* Try the COM class factory method of creation with enumerated device */
    rc=FUNC0(&CLSID_DirectSound8, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound8, (void**)&dso);
    FUNC11(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        FUNC5(dso, FALSE, lpGuid);

    /* Create a DirectSound8 object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK,"DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUND8 dso1=NULL;

        /* Create a second DirectSound8 object */
        rc=FUNC12(lpGuid,&dso1,NULL);
        FUNC11(rc==DS_OK,"DirectSoundCreate8() failed: %08x\n",rc);
        if (rc==DS_OK) {
            /* Release the second DirectSound8 object */
            ref=FUNC4(dso1);
            FUNC11(ref==0,"IDirectSound8_Release() has %d references, "
               "should have 0\n",ref);
            FUNC11(dso!=dso1,"DirectSound8 objects should be unique: "
               "dso=%p,dso1=%p\n",dso,dso1);
        }

        /* Release the first DirectSound8 object */
        ref=FUNC4(dso);
        FUNC11(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;

    /* Create a DirectSound8 object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK,"DirectSoundCreate8() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUNDBUFFER secondary;
        DSBUFFERDESC bufdesc;
        WAVEFORMATEX wfx;

        FUNC10(&wfx,WAVE_FORMAT_PCM,11025,8,1);
        FUNC8(&bufdesc, sizeof(bufdesc));
        bufdesc.dwSize=sizeof(bufdesc);
        bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2 | DSBCAPS_CTRL3D;
        bufdesc.dwBufferBytes=FUNC9(wfx.nAvgBytesPerSec*BUFFER_LEN/1000,
                                    wfx.nBlockAlign);
        bufdesc.lpwfxFormat=&wfx;
        rc=FUNC2(dso,&bufdesc,&secondary,NULL);
        FUNC11(rc==DS_OK && secondary!=NULL,
           "IDirectSound8_CreateSoundBuffer() failed to create a secondary "
           "buffer: %08x\n",rc);
        if (rc==DS_OK && secondary!=NULL) {
            LPDIRECTSOUND3DBUFFER buffer3d;
            LPDIRECTSOUNDBUFFER8 buffer8;
            rc=FUNC3(secondary,
                                            &IID_IDirectSound3DBuffer,
                                            (void **)&buffer3d);
            FUNC11(rc==DS_OK && buffer3d!=NULL,
               "IDirectSound8_QueryInterface() failed: %08x\n", rc);
            if (rc==DS_OK && buffer3d!=NULL) {
                ref=FUNC1(buffer3d);
                FUNC11(ref==2,"IDirectSound3DBuffer_AddRef() has %d references, "
                   "should have 2\n",ref);
            }
            rc=FUNC3(secondary,
                                            &IID_IDirectSoundBuffer8,
                                            (void **)&buffer8);
            if (rc==DS_OK && buffer8!=NULL) {
                FUNC11(buffer8==(IDirectSoundBuffer8*)secondary,
                   "IDirectSoundBuffer8 iface different from IDirectSoundBuffer.\n");
                ref=FUNC6(buffer8);
                FUNC11(ref==3,"IDirectSoundBuffer8_AddRef() has %d references, "
                   "should have 3\n",ref);
            }
            ref=FUNC7(secondary);
            FUNC11(ref==4,"IDirectSoundBuffer_AddRef() has %d references, "
               "should have 4\n",ref);
        }
        /* release with buffer */
        ref=FUNC4(dso);
        FUNC11(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;

    return DS_OK;
}