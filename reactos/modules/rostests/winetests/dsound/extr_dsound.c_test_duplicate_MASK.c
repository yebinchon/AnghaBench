#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  event ;
typedef  int /*<<< orphan*/  bufdesc ;
struct TYPE_11__ {int nAvgBytesPerSec; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
struct TYPE_13__ {void* hEventNotify; void* dwOffset; } ;
struct TYPE_12__ {int dwSize; int dwFlags; int dwBufferBytes; TYPE_1__* lpwfxFormat; } ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDNOTIFY ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND ;
typedef  scalar_t__ HRESULT ;
typedef  void* HANDLE ;
typedef  int DWORD ;
typedef  TYPE_2__ DSBUFFERDESC ;
typedef  TYPE_4__ DSBPOSITIONNOTIFY ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DSBCAPS_CTRLPOSITIONNOTIFY ; 
 int DSBCAPS_GETCURRENTPOSITION2 ; 
 int DSBCAPS_PRIMARYBUFFER ; 
 int /*<<< orphan*/  DSBLOCK_ENTIREBUFFER ; 
 void* DSBPN_OFFSETSTOP ; 
 scalar_t__ DSERR_ALLOCATED ; 
 scalar_t__ DSERR_GENERIC ; 
 scalar_t__ DSERR_NODRIVER ; 
 int /*<<< orphan*/  DSSCL_NORMAL ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDirectSoundNotify ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 int /*<<< orphan*/  WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,void**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static HRESULT FUNC18(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=NULL;
    LPDIRECTSOUNDBUFFER primary=NULL;
    DSBUFFERDESC bufdesc;
    int ref;

    /* Create the DirectSound object */
    rc=FUNC15(lpGuid,&dso,NULL);
    FUNC14(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    /* We must call SetCooperativeLevel before creating primary buffer */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_PRIORITY */
    rc=FUNC10(dso,FUNC12(),DSSCL_PRIORITY);
    FUNC14(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);
    if (rc!=DS_OK)
        goto EXIT;

    FUNC11(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER;
    rc=FUNC7(dso,&bufdesc,&primary,NULL);
    FUNC14(rc==DS_OK && primary!=NULL,"IDirectSound_CreateSoundBuffer() failed "
       "to create a primary buffer %08x\n",rc);

    if (rc==DS_OK && primary!=NULL) {
        LPDIRECTSOUNDBUFFER original=NULL;
        WAVEFORMATEX wfx;

        FUNC13(&wfx,WAVE_FORMAT_PCM,22050,16,1);
        FUNC11(&bufdesc, sizeof(bufdesc));
        bufdesc.dwSize=sizeof(bufdesc);
        bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2|DSBCAPS_CTRLPOSITIONNOTIFY;
        bufdesc.dwBufferBytes=wfx.nAvgBytesPerSec/100; /* very short buffer */
        bufdesc.lpwfxFormat=&wfx;
        rc=FUNC7(dso,&bufdesc,&original,NULL);
        FUNC14(rc==DS_OK && original!=NULL,
           "IDirectSound_CreateSoundBuffer() failed to create a original "
           "buffer %08x\n",rc);
        if (rc==DS_OK && original!=NULL) {
            LPDIRECTSOUNDBUFFER duplicated=NULL;
            LPDIRECTSOUNDNOTIFY notify=NULL;
            HANDLE event[2];
            LPVOID buf=NULL;
            DWORD bufsize;
            int i;

            /* Prepare notify events */
            for (i=0;i<sizeof(event)/sizeof(event[0]);i++) {
                event[i] = FUNC0(NULL,FALSE,FALSE,NULL);
            }

            /* Make silent buffer */
            rc=FUNC1(original,0,0,&buf,&bufsize,
                                       NULL,NULL,DSBLOCK_ENTIREBUFFER);
            FUNC14(rc==DS_OK && buf!=NULL,
               "IDirectSoundBuffer_Lock failed to lock the buffer %08x\n",rc);
            if (rc==DS_OK && buf!=NULL) {
                FUNC11(buf,bufsize);
                rc=FUNC4(original,buf,bufsize,
                                             NULL,0);
                FUNC14(rc==DS_OK,"IDirectSoundBuffer_Unlock failed to unlock "
                   "%08x\n",rc);
            }

            rc=FUNC2(original,
                                                 &IID_IDirectSoundNotify,
                                                 (void**)&notify);
            FUNC14(rc==DS_OK && notify!=NULL,
               "IDirectSoundBuffer_QueryInterface() failed to create a "
               "notification %08x\n",rc);
            if (rc==DS_OK && notify!=NULL) {
                DSBPOSITIONNOTIFY dsbpn;
                LPDIRECTSOUNDNOTIFY dup_notify=NULL;

                dsbpn.dwOffset=DSBPN_OFFSETSTOP;
                dsbpn.hEventNotify=event[0];
                rc=FUNC6(notify,
                                                               1,&dsbpn);
                FUNC14(rc==DS_OK,"IDirectSoundNotify_SetNotificationPositions "
                   "failed %08x\n",rc);

                rc=FUNC8(dso,original,&duplicated);
                FUNC14(rc==DS_OK && duplicated!=NULL,
                   "IDirectSound_DuplicateSoundBuffer failed %08x\n",rc);

                FUNC17("testing duplicated buffer without notifications.\n");
                FUNC16(duplicated,sizeof(event)/sizeof(event[0]),
                            event,WAIT_TIMEOUT);

                rc=FUNC2(duplicated,
                                                     &IID_IDirectSoundNotify,
                                                     (void**)&dup_notify);
                FUNC14(rc==DS_OK&&dup_notify!=NULL,
                   "IDirectSoundBuffer_QueryInterface() failed to create a "
                   "notification %08x\n",rc);
                if(rc==DS_OK&&dup_notify!=NULL) {
                    dsbpn.dwOffset=DSBPN_OFFSETSTOP;
                    dsbpn.hEventNotify=event[1];
                    rc=FUNC6(dup_notify,
                                                                   1,&dsbpn);
                    FUNC14(rc==DS_OK,"IDirectSoundNotify_SetNotificationPositions "
                       "failed %08x\n",rc);

                    FUNC17("testing duplicated buffer with a notification.\n");
                    FUNC16(duplicated,sizeof(event)/sizeof(event[0]),
                                event,WAIT_OBJECT_0+1);

                    ref=FUNC5(dup_notify);
                    FUNC14(ref==0,"IDirectSoundNotify_Release() has %d references, "
                       "should have 0\n",ref);
                }
                ref=FUNC5(notify);
                FUNC14(ref==0,"IDirectSoundNotify_Release() has %d references, "
                   "should have 0\n",ref);

                FUNC17("testing original buffer with a notification.\n");
                FUNC16(original,sizeof(event)/sizeof(event[0]),
                            event,WAIT_OBJECT_0);

                ref=FUNC3(duplicated);
                FUNC14(ref==0,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 0\n",ref);
            }
            ref=FUNC3(original);
            FUNC14(ref==0,"IDirectSoundBuffer_Release() has %d references, "
               "should have 0\n",ref);
        }
        ref=FUNC3(primary);
        FUNC14(ref==0,"IDirectSoundBuffer_Release() has %d references, "
           "should have 0\n",ref);
    }

    /* Set the CooperativeLevel back to normal */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_NORMAL */
    rc=FUNC10(dso,FUNC12(),DSSCL_NORMAL);
    FUNC14(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);

EXIT:
    ref=FUNC9(dso);
    FUNC14(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}