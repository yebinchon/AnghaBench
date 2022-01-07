
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int dscaps ;
typedef int bufdesc ;
struct TYPE_6__ {int dwSize; int dwFlags; } ;
typedef void* LPVOID ;
typedef int LPGUID ;
typedef int * LPDIRECTSOUNDBUFFER ;
typedef int * LPDIRECTSOUND8 ;
typedef int * LPDIRECTSOUND3DLISTENER ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DSCAPS ;
typedef TYPE_1__ DSBUFFERDESC ;


 int DSBCAPS_CTRL3D ;
 int DSBCAPS_PRIMARYBUFFER ;
 int DSCAPS_EMULDRIVER ;
 scalar_t__ DSERR_GENERIC ;
 scalar_t__ DSERR_NODRIVER ;
 int DSSCL_PRIORITY ;
 scalar_t__ DS_OK ;
 int FALSE ;
 scalar_t__ IDirectSound3DListener_QueryInterface (int *,int *,void**) ;
 int IDirectSound3DListener_Release (int *) ;
 scalar_t__ IDirectSound8_CreateSoundBuffer (int *,TYPE_1__*,int **,int *) ;
 scalar_t__ IDirectSound8_GetCaps (int *,TYPE_1__*) ;
 int IDirectSound8_Release (int *) ;
 scalar_t__ IDirectSound8_SetCooperativeLevel (int *,int ,int ) ;
 scalar_t__ IDirectSoundBuffer_QueryInterface (int *,int *,void**) ;
 int IDirectSoundBuffer_Release (int *) ;
 int IID_IDirectSound3DListener ;
 int IID_IDirectSoundBuffer ;
 int ZeroMemory (TYPE_1__*,int) ;
 int get_hwnd () ;
 int ok (int,char*,int,...) ;
 scalar_t__ pDirectSoundCreate8 (int ,int **,int *) ;
 int test_buffer8 (int *,int **,int,int ,int ,int ,int ,int,double,int ,int *,int ,int ) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static HRESULT test_primary_3d_with_listener8(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=((void*)0);
    LPDIRECTSOUNDBUFFER primary=((void*)0);
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    int ref;


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
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER|DSBCAPS_CTRL3D;
    rc=IDirectSound8_CreateSoundBuffer(dso,&bufdesc,&primary,((void*)0));
    ok(rc==DS_OK && primary!=((void*)0),"IDirectSound8_CreateSoundBuffer() failed "
       "to create a 3D primary buffer %08x\n",rc);
    if (rc==DS_OK && primary!=((void*)0)) {
        LPDIRECTSOUND3DLISTENER listener=((void*)0);
        rc=IDirectSoundBuffer_QueryInterface(primary,
                                             &IID_IDirectSound3DListener,
                                             (void **)&listener);
        ok(rc==DS_OK && listener!=((void*)0),"IDirectSoundBuffer_QueryInterface() "
           "failed to get a 3D listener: %08x\n",rc);
        if (rc==DS_OK && listener!=((void*)0)) {
            LPDIRECTSOUNDBUFFER temp_buffer=((void*)0);


            rc=IDirectSoundBuffer_QueryInterface(primary,
                                                 &IID_IDirectSoundBuffer,
                                                 (LPVOID *)&temp_buffer);
            ok(rc==DS_OK && temp_buffer!=((void*)0),
               "IDirectSoundBuffer_QueryInterface() failed: %08x\n", rc);
            ok(temp_buffer==primary,"COM interface broken: %p != %p\n",temp_buffer,primary);
            if (rc==DS_OK && temp_buffer!=((void*)0)) {
                ref=IDirectSoundBuffer_Release(temp_buffer);
                ok(ref==1,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 1\n",ref);

                temp_buffer=((void*)0);
                rc=IDirectSound3DListener_QueryInterface(listener,
                    &IID_IDirectSoundBuffer,(LPVOID *)&temp_buffer);
                ok(rc==DS_OK && temp_buffer!=((void*)0),
                   "IDirectSoundBuffer_QueryInterface() failed: %08x\n", rc);
                ok(temp_buffer==primary,"COM interface broken: %p != %p\n",temp_buffer,primary);
                ref=IDirectSoundBuffer_Release(temp_buffer);
                ok(ref==1,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 1\n",ref);


                test_buffer8(dso,&primary,1,FALSE,0,FALSE,0,
                             winetest_interactive &&
                             !(dscaps.dwFlags & DSCAPS_EMULDRIVER),
                             1.0,0,listener,0,0);
            }


            ref=IDirectSound3DListener_Release(listener);
            ok(ref==0,"IDirectSound3DListener_Release() listener has %d "
               "references, should have 0\n",ref);
        }


        ref=IDirectSoundBuffer_Release(primary);
        ok(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }

EXIT:
    ref=IDirectSound8_Release(dso);
    ok(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
return DSERR_GENERIC;

    return rc;
}
