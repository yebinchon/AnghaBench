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
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND3DBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND ;
typedef  int HRESULT ;
typedef  TYPE_2__ DSBUFFERDESC ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectSound ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int DSBCAPS_CTRL3D ; 
 int DSBCAPS_GETCURRENTPOSITION2 ; 
 int DSERR_ALLOCATED ; 
 int DSERR_CONTROLUNAVAIL ; 
 int DSERR_GENERIC ; 
 int DSERR_INVALIDPARAM ; 
 int DSERR_NODRIVER ; 
 int DS_OK ; 
 int E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IDirectSound3DBuffer ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=NULL;
    int ref;

    /* DSOUND: Error: Invalid interface buffer */
    rc=FUNC12(lpGuid,0,NULL);
    FUNC11(rc==DSERR_INVALIDPARAM,"DirectSoundCreate() should have returned "
       "DSERR_INVALIDPARAM, returned: %08x\n",rc);

    /* Create the DirectSound object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    /* Try the enumerated device */
    FUNC6(dso, TRUE, lpGuid);

    /* Try the COM class factory method of creation with enumerated device */
    rc=FUNC0(&CLSID_DirectSound, NULL, CLSCTX_INPROC_SERVER,
                        &IID_IDirectSound, (void**)&dso);
    FUNC11(rc==S_OK,"CoCreateInstance(CLSID_DirectSound) failed: %08x\n", rc);
    if (dso)
        FUNC6(dso, FALSE, lpGuid);

    /* Create a DirectSound object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK,"DirectSoundCreate() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUND dso1=NULL;

        /* Create a second DirectSound object */
        rc=FUNC12(lpGuid,&dso1,NULL);
        FUNC11(rc==DS_OK,"DirectSoundCreate() failed: %08x\n",rc);
        if (rc==DS_OK) {
            /* Release the second DirectSound object */
            ref=FUNC5(dso1);
            FUNC11(ref==0,"IDirectSound_Release() has %d references, should have "
               "0\n",ref);
            FUNC11(dso!=dso1,"DirectSound objects should be unique: dso=%p,dso1=%p\n",*dso,dso1);
        }

        /* Release the first DirectSound object */
        ref=FUNC5(dso);
        FUNC11(ref==0,"IDirectSound_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;

    /* Create a DirectSound object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK,"DirectSoundCreate() failed: %08x\n",rc);
    if (rc==DS_OK) {
        LPDIRECTSOUNDBUFFER secondary;
        DSBUFFERDESC bufdesc;
        WAVEFORMATEX wfx;

        FUNC10(&wfx,WAVE_FORMAT_PCM,11025,8,1);
        FUNC7(&bufdesc, sizeof(bufdesc));
        bufdesc.dwSize=sizeof(bufdesc);
        bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2 | DSBCAPS_CTRL3D;
        bufdesc.dwBufferBytes=FUNC8(wfx.nAvgBytesPerSec*BUFFER_LEN/1000,
                                    wfx.nBlockAlign);
        bufdesc.lpwfxFormat=&wfx;
        rc=FUNC3(dso,&bufdesc,&secondary,NULL);
        FUNC11((rc==DS_OK && secondary!=NULL) || FUNC9(rc == DSERR_CONTROLUNAVAIL), /* vmware drivers on w2k */
           "IDirectSound_CreateSoundBuffer() failed to create a secondary "
           "buffer %08x\n",rc);
        if (rc==DS_OK && secondary!=NULL) {
            LPDIRECTSOUND3DBUFFER buffer3d;
            rc=FUNC4(secondary, &IID_IDirectSound3DBuffer,
                                           (void **)&buffer3d);
            FUNC11(rc==DS_OK && buffer3d!=NULL,"IDirectSound_QueryInterface() "
               "failed: %08x\n",rc);
            if (rc==DS_OK && buffer3d!=NULL) {
                ref=FUNC1(buffer3d);
                FUNC11(ref==2,"IDirectSound3DBuffer_AddRef() has %d references, "
                   "should have 2\n",ref);
            }
            ref=FUNC2(secondary);
            FUNC11(ref==2,"IDirectSoundBuffer_AddRef() has %d references, "
               "should have 2\n",ref);
        }
        /* release with buffer */
        ref=FUNC5(dso);
        FUNC11(ref==0,"IDirectSound_Release() has %d references, should have 0\n",
           ref);
        if (ref!=0)
            return DSERR_GENERIC;
    } else
        return rc;

    return DS_OK;
}