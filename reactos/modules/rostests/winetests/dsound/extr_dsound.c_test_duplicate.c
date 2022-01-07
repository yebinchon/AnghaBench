
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int event ;
typedef int bufdesc ;
struct TYPE_11__ {int nAvgBytesPerSec; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_13__ {void* hEventNotify; void* dwOffset; } ;
struct TYPE_12__ {int dwSize; int dwFlags; int dwBufferBytes; TYPE_1__* lpwfxFormat; } ;
typedef TYPE_2__* LPVOID ;
typedef int LPGUID ;
typedef int * LPDIRECTSOUNDNOTIFY ;
typedef int * LPDIRECTSOUNDBUFFER ;
typedef int * LPDIRECTSOUND ;
typedef scalar_t__ HRESULT ;
typedef void* HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ DSBUFFERDESC ;
typedef TYPE_4__ DSBPOSITIONNOTIFY ;


 void* CreateEvent (int *,int ,int ,int *) ;
 int DSBCAPS_CTRLPOSITIONNOTIFY ;
 int DSBCAPS_GETCURRENTPOSITION2 ;
 int DSBCAPS_PRIMARYBUFFER ;
 int DSBLOCK_ENTIREBUFFER ;
 void* DSBPN_OFFSETSTOP ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_GENERIC ;
 scalar_t__ DSERR_NODRIVER ;
 int DSSCL_NORMAL ;
 int DSSCL_PRIORITY ;
 scalar_t__ DS_OK ;
 int FALSE ;
 scalar_t__ IDirectSoundBuffer_Lock (int *,int ,int ,TYPE_2__**,int*,int *,int *,int ) ;
 scalar_t__ IDirectSoundBuffer_QueryInterface (int *,int *,void**) ;
 int IDirectSoundBuffer_Release (int *) ;
 scalar_t__ IDirectSoundBuffer_Unlock (int *,TYPE_2__*,int,int *,int ) ;
 int IDirectSoundNotify_Release (int *) ;
 scalar_t__ IDirectSoundNotify_SetNotificationPositions (int *,int,TYPE_4__*) ;
 scalar_t__ IDirectSound_CreateSoundBuffer (int *,TYPE_2__*,int **,int *) ;
 scalar_t__ IDirectSound_DuplicateSoundBuffer (int *,int *,int **) ;
 int IDirectSound_Release (int *) ;
 scalar_t__ IDirectSound_SetCooperativeLevel (int *,int ,int ) ;
 int IID_IDirectSoundNotify ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 int WAVE_FORMAT_PCM ;
 int ZeroMemory (TYPE_2__*,int) ;
 int get_hwnd () ;
 int init_format (TYPE_1__*,int ,int,int,int) ;
 int ok (int,char*,int) ;
 scalar_t__ pDirectSoundCreate (int ,int **,int *) ;
 int test_notify (int *,int,void**,scalar_t__) ;
 int trace (char*) ;

__attribute__((used)) static HRESULT test_duplicate(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=((void*)0);
    LPDIRECTSOUNDBUFFER primary=((void*)0);
    DSBUFFERDESC bufdesc;
    int ref;


    rc=pDirectSoundCreate(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;



    rc=IDirectSound_SetCooperativeLevel(dso,get_hwnd(),DSSCL_PRIORITY);
    ok(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);
    if (rc!=DS_OK)
        goto EXIT;

    ZeroMemory(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER;
    rc=IDirectSound_CreateSoundBuffer(dso,&bufdesc,&primary,((void*)0));
    ok(rc==DS_OK && primary!=((void*)0),"IDirectSound_CreateSoundBuffer() failed "
       "to create a primary buffer %08x\n",rc);

    if (rc==DS_OK && primary!=((void*)0)) {
        LPDIRECTSOUNDBUFFER original=((void*)0);
        WAVEFORMATEX wfx;

        init_format(&wfx,WAVE_FORMAT_PCM,22050,16,1);
        ZeroMemory(&bufdesc, sizeof(bufdesc));
        bufdesc.dwSize=sizeof(bufdesc);
        bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2|DSBCAPS_CTRLPOSITIONNOTIFY;
        bufdesc.dwBufferBytes=wfx.nAvgBytesPerSec/100;
        bufdesc.lpwfxFormat=&wfx;
        rc=IDirectSound_CreateSoundBuffer(dso,&bufdesc,&original,((void*)0));
        ok(rc==DS_OK && original!=((void*)0),
           "IDirectSound_CreateSoundBuffer() failed to create a original "
           "buffer %08x\n",rc);
        if (rc==DS_OK && original!=((void*)0)) {
            LPDIRECTSOUNDBUFFER duplicated=((void*)0);
            LPDIRECTSOUNDNOTIFY notify=((void*)0);
            HANDLE event[2];
            LPVOID buf=((void*)0);
            DWORD bufsize;
            int i;


            for (i=0;i<sizeof(event)/sizeof(event[0]);i++) {
                event[i] = CreateEvent(((void*)0),FALSE,FALSE,((void*)0));
            }


            rc=IDirectSoundBuffer_Lock(original,0,0,&buf,&bufsize,
                                       ((void*)0),((void*)0),DSBLOCK_ENTIREBUFFER);
            ok(rc==DS_OK && buf!=((void*)0),
               "IDirectSoundBuffer_Lock failed to lock the buffer %08x\n",rc);
            if (rc==DS_OK && buf!=((void*)0)) {
                ZeroMemory(buf,bufsize);
                rc=IDirectSoundBuffer_Unlock(original,buf,bufsize,
                                             ((void*)0),0);
                ok(rc==DS_OK,"IDirectSoundBuffer_Unlock failed to unlock "
                   "%08x\n",rc);
            }

            rc=IDirectSoundBuffer_QueryInterface(original,
                                                 &IID_IDirectSoundNotify,
                                                 (void**)&notify);
            ok(rc==DS_OK && notify!=((void*)0),
               "IDirectSoundBuffer_QueryInterface() failed to create a "
               "notification %08x\n",rc);
            if (rc==DS_OK && notify!=((void*)0)) {
                DSBPOSITIONNOTIFY dsbpn;
                LPDIRECTSOUNDNOTIFY dup_notify=((void*)0);

                dsbpn.dwOffset=DSBPN_OFFSETSTOP;
                dsbpn.hEventNotify=event[0];
                rc=IDirectSoundNotify_SetNotificationPositions(notify,
                                                               1,&dsbpn);
                ok(rc==DS_OK,"IDirectSoundNotify_SetNotificationPositions "
                   "failed %08x\n",rc);

                rc=IDirectSound_DuplicateSoundBuffer(dso,original,&duplicated);
                ok(rc==DS_OK && duplicated!=((void*)0),
                   "IDirectSound_DuplicateSoundBuffer failed %08x\n",rc);

                trace("testing duplicated buffer without notifications.\n");
                test_notify(duplicated,sizeof(event)/sizeof(event[0]),
                            event,WAIT_TIMEOUT);

                rc=IDirectSoundBuffer_QueryInterface(duplicated,
                                                     &IID_IDirectSoundNotify,
                                                     (void**)&dup_notify);
                ok(rc==DS_OK&&dup_notify!=((void*)0),
                   "IDirectSoundBuffer_QueryInterface() failed to create a "
                   "notification %08x\n",rc);
                if(rc==DS_OK&&dup_notify!=((void*)0)) {
                    dsbpn.dwOffset=DSBPN_OFFSETSTOP;
                    dsbpn.hEventNotify=event[1];
                    rc=IDirectSoundNotify_SetNotificationPositions(dup_notify,
                                                                   1,&dsbpn);
                    ok(rc==DS_OK,"IDirectSoundNotify_SetNotificationPositions "
                       "failed %08x\n",rc);

                    trace("testing duplicated buffer with a notification.\n");
                    test_notify(duplicated,sizeof(event)/sizeof(event[0]),
                                event,WAIT_OBJECT_0+1);

                    ref=IDirectSoundNotify_Release(dup_notify);
                    ok(ref==0,"IDirectSoundNotify_Release() has %d references, "
                       "should have 0\n",ref);
                }
                ref=IDirectSoundNotify_Release(notify);
                ok(ref==0,"IDirectSoundNotify_Release() has %d references, "
                   "should have 0\n",ref);

                trace("testing original buffer with a notification.\n");
                test_notify(original,sizeof(event)/sizeof(event[0]),
                            event,WAIT_OBJECT_0);

                ref=IDirectSoundBuffer_Release(duplicated);
                ok(ref==0,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 0\n",ref);
            }
            ref=IDirectSoundBuffer_Release(original);
            ok(ref==0,"IDirectSoundBuffer_Release() has %d references, "
               "should have 0\n",ref);
        }
        ref=IDirectSoundBuffer_Release(primary);
        ok(ref==0,"IDirectSoundBuffer_Release() has %d references, "
           "should have 0\n",ref);
    }



    rc=IDirectSound_SetCooperativeLevel(dso,get_hwnd(),DSSCL_NORMAL);
    ok(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);

EXIT:
    ref=IDirectSound_Release(dso);
    ok(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}
