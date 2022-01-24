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
typedef  void* LPVOID ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND3DLISTENER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DSCAPS ;
typedef  TYPE_1__ DSBUFFERDESC ;

/* Variables and functions */
 int DSBCAPS_CTRL3D ; 
 int DSBCAPS_PRIMARYBUFFER ; 
 int DSCAPS_EMULDRIVER ; 
 scalar_t__ DSERR_GENERIC ; 
 scalar_t__ DSERR_NODRIVER ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDirectSound3DListener ; 
 int /*<<< orphan*/  IID_IDirectSoundBuffer ; 
 int /*<<< orphan*/  IID_IKsPropertySet ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static HRESULT FUNC14(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=NULL;
    LPDIRECTSOUNDBUFFER primary=NULL;
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    int ref;

    /* Create the DirectSound object */
    rc=FUNC12(lpGuid,&dso,NULL);
    FUNC11(rc==DS_OK||rc==DSERR_NODRIVER,"DirectSoundCreate() failed: %08x\n", rc);
    if (rc!=DS_OK)
        return rc;

    /* Get the device capabilities */
    FUNC9(&dscaps, sizeof(dscaps));
    dscaps.dwSize=sizeof(dscaps);
    rc=FUNC5(dso,&dscaps);
    FUNC11(rc==DS_OK,"IDirectSound_GetCaps() failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;

    /* We must call SetCooperativeLevel before calling CreateSoundBuffer */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_PRIORITY */
    rc=FUNC7(dso,FUNC10(),DSSCL_PRIORITY);
    FUNC11(rc==DS_OK,"IDirectSound_SetCooperativeLevel(DSSCL_PRIORITY) failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;
    primary=NULL;
    FUNC9(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER|DSBCAPS_CTRL3D;
    rc=FUNC4(dso,&bufdesc,&primary,NULL);
    FUNC11(rc==DS_OK && primary!=NULL,"IDirectSound_CreateSoundBuffer() failed "
       "to create a 3D primary buffer: %08x\n",rc);
    if (rc==DS_OK && primary!=NULL) {
        LPDIRECTSOUND3DLISTENER listener=NULL;
        LPDIRECTSOUNDBUFFER temp_buffer=NULL;
        rc=FUNC2(primary,
            &IID_IDirectSound3DListener,(void **)&listener);
        FUNC11(rc==DS_OK && listener!=NULL,"IDirectSoundBuffer_QueryInterface() "
           "failed to get a 3D listener: %08x\n",rc);
        if (rc==DS_OK && listener!=NULL) {
            /* Checking the COM interface */
            rc=FUNC2(primary,
                &IID_IDirectSoundBuffer,(LPVOID *)&temp_buffer);
            FUNC11(rc==DS_OK && temp_buffer!=NULL,
               "IDirectSoundBuffer_QueryInterface() failed: %08x\n", rc);
            FUNC11(temp_buffer==primary,
               "COM interface broken: %p != %p\n",
               *temp_buffer,primary);
            if (rc==DS_OK && temp_buffer!=NULL) {
                ref=FUNC3(temp_buffer);
                FUNC11(ref==1,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 1\n",ref);

                temp_buffer=NULL;
                rc=FUNC0(listener,
                    &IID_IDirectSoundBuffer,(LPVOID *)&temp_buffer);
                FUNC11(rc==DS_OK && temp_buffer!=NULL,
                   "IDirectSoundBuffer_QueryInterface() failed: %08x\n", rc);
                FUNC11(temp_buffer==primary,
                   "COM interface broken: %p != %p\n",
                   *temp_buffer,primary);
                ref=FUNC3(temp_buffer);
                FUNC11(ref==1,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 1\n",ref);

                /* Testing the buffer */
                FUNC13(dso,&primary,1,FALSE,0,FALSE,0,
                            winetest_interactive &&
                            !(dscaps.dwFlags & DSCAPS_EMULDRIVER),1.0,0,
                            listener,0,0,FALSE,0);

                temp_buffer = NULL;
                rc = FUNC0(listener, &IID_IKsPropertySet,
                        (void **)&temp_buffer);
                FUNC11(rc==DS_OK && temp_buffer!=NULL,
                        "IDirectSound3DListener_QueryInterface didn't handle IKsPropertySet: ret = %08x\n", rc);
                if(temp_buffer)
                    FUNC8(temp_buffer);
            }

            /* Testing the reference counting */
            ref=FUNC1(listener);
            FUNC11(ref==0,"IDirectSound3DListener_Release() listener has %d "
               "references, should have 0\n",ref);
        }

        temp_buffer = NULL;
        rc = FUNC2(primary, &IID_IKsPropertySet, (void **)&temp_buffer);
        FUNC11(rc==DS_OK && temp_buffer!=NULL,
                "IDirectSoundBuffer_QueryInterface didn't handle IKsPropertySet on primary buffer: ret = %08x\n", rc);
        if(temp_buffer)
            FUNC8(temp_buffer);

        /* Testing the reference counting */
        ref=FUNC3(primary);
        FUNC11(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }

EXIT:
    ref=FUNC6(dso);
    FUNC11(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
return DSERR_GENERIC;

    return rc;
}