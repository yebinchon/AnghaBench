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
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND3DLISTENER ;
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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirectSound3DListener ; 
 int /*<<< orphan*/  IID_IDirectSoundBuffer ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static HRESULT FUNC13(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=NULL;
    LPDIRECTSOUNDBUFFER primary=NULL;
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    int ref;

    /* Create the DirectSound object */
    rc=FUNC11(lpGuid,&dso,NULL);
    FUNC10(rc==DS_OK||rc==DSERR_NODRIVER,"DirectSoundCreate8() failed: %08x\n", rc);
    if (rc!=DS_OK)
        return rc;

    /* Get the device capabilities */
    FUNC8(&dscaps, sizeof(dscaps));
    dscaps.dwSize=sizeof(dscaps);
    rc=FUNC3(dso,&dscaps);
    FUNC10(rc==DS_OK,"IDirectSound8_GetCaps() failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;

    /* We must call SetCooperativeLevel before calling CreateSoundBuffer */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_PRIORITY */
    rc=FUNC5(dso,FUNC9(),DSSCL_PRIORITY);
    FUNC10(rc==DS_OK,"IDirectSound8_SetCooperativeLevel(DSSCL_PRIORITY) failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;
    primary=NULL;
    FUNC8(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER|DSBCAPS_CTRL3D;
    rc=FUNC2(dso,&bufdesc,&primary,NULL);
    FUNC10(rc==DS_OK && primary!=NULL,"IDirectSound8_CreateSoundBuffer() failed "
       "to create a 3D primary buffer %08x\n",rc);
    if (rc==DS_OK && primary!=NULL) {
        LPDIRECTSOUND3DLISTENER listener=NULL;
        rc=FUNC6(primary,
                                             &IID_IDirectSound3DListener,
                                             (void **)&listener);
        FUNC10(rc==DS_OK && listener!=NULL,"IDirectSoundBuffer_QueryInterface() "
           "failed to get a 3D listener: %08x\n",rc);
        if (rc==DS_OK && listener!=NULL) {
            LPDIRECTSOUNDBUFFER temp_buffer=NULL;

            /* Checking the COM interface */
            rc=FUNC6(primary,
                                                 &IID_IDirectSoundBuffer,
                                                 (LPVOID *)&temp_buffer);
            FUNC10(rc==DS_OK && temp_buffer!=NULL,
               "IDirectSoundBuffer_QueryInterface() failed: %08x\n", rc);
            FUNC10(temp_buffer==primary,"COM interface broken: %p != %p\n",*temp_buffer,primary);
            if (rc==DS_OK && temp_buffer!=NULL) {
                ref=FUNC7(temp_buffer);
                FUNC10(ref==1,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 1\n",ref);

                temp_buffer=NULL;
                rc=FUNC0(listener,
                    &IID_IDirectSoundBuffer,(LPVOID *)&temp_buffer);
                FUNC10(rc==DS_OK && temp_buffer!=NULL,
                   "IDirectSoundBuffer_QueryInterface() failed: %08x\n", rc);
                FUNC10(temp_buffer==primary,"COM interface broken: %p != %p\n",*temp_buffer,primary);
                ref=FUNC7(temp_buffer);
                FUNC10(ref==1,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 1\n",ref);

                /* Testing the buffer */
                FUNC12(dso,&primary,1,FALSE,0,FALSE,0,
                             winetest_interactive &&
                             !(dscaps.dwFlags & DSCAPS_EMULDRIVER),
                             1.0,0,listener,0,0);
            }

            /* Testing the reference counting */
            ref=FUNC1(listener);
            FUNC10(ref==0,"IDirectSound3DListener_Release() listener has %d "
               "references, should have 0\n",ref);
        }

        /* Testing the reference counting */
        ref=FUNC7(primary);
        FUNC10(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }

EXIT:
    ref=FUNC4(dso);
    FUNC10(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
return DSERR_GENERIC;

    return rc;
}