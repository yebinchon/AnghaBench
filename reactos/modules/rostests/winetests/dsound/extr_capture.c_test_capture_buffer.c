
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wfx ;
typedef int state ;
typedef int dscbcaps ;
struct TYPE_9__ {int buffer_size; int size; int * event; int * notify; TYPE_6__* posnotify; TYPE_2__* wfx; int dscbo; } ;
typedef TYPE_1__ capture_state_t ;
struct TYPE_10__ {int nBlockAlign; int nAvgBytesPerSec; int nChannels; int wBitsPerSample; int nSamplesPerSec; int wFormatTag; } ;
typedef TYPE_2__ WAVEFORMATEX ;
struct TYPE_12__ {int dwOffset; int hEventNotify; } ;
struct TYPE_11__ {int dwSize; int dwBufferBytes; int dwFlags; } ;
typedef int LPDIRECTSOUNDCAPTUREBUFFER ;
typedef int LPDIRECTSOUNDCAPTURE ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ DSCBCAPS ;


 int CreateEvent (int *,int ,int ,int *) ;
 int DSCBSTART_LOOPING ;
 scalar_t__ DSCBSTATUS_CAPTURING ;
 scalar_t__ DSCBSTATUS_LOOPING ;
 int DSERR_INVALIDPARAM ;
 int DS_OK ;
 int FALSE ;
 int IDirectSoundCaptureBuffer_GetCaps (int ,TYPE_3__*) ;
 int IDirectSoundCaptureBuffer_GetFormat (int ,TYPE_2__*,int,scalar_t__*) ;
 int IDirectSoundCaptureBuffer_GetStatus (int ,scalar_t__*) ;
 int IDirectSoundCaptureBuffer_QueryInterface (int ,int *,void**) ;
 int IDirectSoundCaptureBuffer_Start (int ,int ) ;
 int IDirectSoundCaptureBuffer_Stop (int ) ;
 int IDirectSoundNotify_Release (int *) ;
 int IDirectSoundNotify_SetNotificationPositions (int *,int,TYPE_6__*) ;
 int IID_IDirectSoundNotify ;
 int NOTIFICATIONS ;
 int WAIT_FAILED ;
 int WAIT_OBJECT_0 ;
 int WAIT_TIMEOUT ;
 int WaitForMultipleObjects (int,int *,int ,int) ;
 int ZeroMemory (TYPE_1__*,int) ;
 scalar_t__ broken (int) ;
 int capture_buffer_service (TYPE_1__*) ;
 int ok (int,char*,int,...) ;
 int trace (char*,scalar_t__,...) ;
 int winetest_debug ;

__attribute__((used)) static void test_capture_buffer(LPDIRECTSOUNDCAPTURE dsco,
    LPDIRECTSOUNDCAPTUREBUFFER dscbo, int record)
{
    HRESULT rc;
    DSCBCAPS dscbcaps;
    WAVEFORMATEX wfx;
    DWORD size,status;
    capture_state_t state;
    int i, ref;


    rc=IDirectSoundCaptureBuffer_GetCaps(dscbo,0);
    ok(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetCaps() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);


    dscbcaps.dwSize=0;
    rc=IDirectSoundCaptureBuffer_GetCaps(dscbo,&dscbcaps);
    ok(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetCaps() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    dscbcaps.dwSize=sizeof(dscbcaps);
    rc=IDirectSoundCaptureBuffer_GetCaps(dscbo,&dscbcaps);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_GetCaps() failed: %08x\n", rc);
    if (rc==DS_OK && winetest_debug > 1) {
 trace("    Caps: size = %d flags=0x%08x buffer size=%d\n",
     dscbcaps.dwSize,dscbcaps.dwFlags,dscbcaps.dwBufferBytes);
    }




    rc=IDirectSoundCaptureBuffer_GetFormat(dscbo,((void*)0),0,((void*)0));
    ok(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetFormat() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    size=0;
    rc=IDirectSoundCaptureBuffer_GetFormat(dscbo,((void*)0),0,&size);
    ok(rc==DS_OK && size!=0,"IDirectSoundCaptureBuffer_GetFormat() should "
       "have returned the needed size: rc=%08x, size=%d\n", rc,size);

    rc=IDirectSoundCaptureBuffer_GetFormat(dscbo,&wfx,sizeof(wfx),((void*)0));
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_GetFormat() failed: %08x\n", rc);
    if (rc==DS_OK && winetest_debug > 1) {
 trace("    Format: tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\n",
       wfx.wFormatTag,wfx.nSamplesPerSec,wfx.wBitsPerSample,
       wfx.nChannels,wfx.nAvgBytesPerSec,wfx.nBlockAlign);
    }


    rc=IDirectSoundCaptureBuffer_GetStatus(dscbo,0);
    ok(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetStatus() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    rc=IDirectSoundCaptureBuffer_GetStatus(dscbo,&status);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_GetStatus() failed: %08x\n", rc);
    if (rc==DS_OK && winetest_debug > 1) {
 trace("    Status=0x%04x\n",status);
    }

    ZeroMemory(&state, sizeof(state));
    state.dscbo=dscbo;
    state.wfx=&wfx;
    state.buffer_size = dscbcaps.dwBufferBytes;
    for (i = 0; i < NOTIFICATIONS; i++)
 state.event[i] = CreateEvent( ((void*)0), FALSE, FALSE, ((void*)0) );
    state.size = dscbcaps.dwBufferBytes / NOTIFICATIONS;

    rc=IDirectSoundCaptureBuffer_QueryInterface(dscbo,&IID_IDirectSoundNotify,
                                                (void **)&(state.notify));
    ok((rc==DS_OK)&&(state.notify!=((void*)0)),
       "IDirectSoundCaptureBuffer_QueryInterface() failed: %08x\n", rc);

    for (i = 0; i < NOTIFICATIONS; i++) {
 state.posnotify[i].dwOffset = (i * state.size) + state.size - 1;
 state.posnotify[i].hEventNotify = state.event[i];
    }

    rc=IDirectSoundNotify_SetNotificationPositions(state.notify,NOTIFICATIONS,
                                                   state.posnotify);
    ok(rc==DS_OK,"IDirectSoundNotify_SetNotificationPositions() failed: %08x\n", rc);

    ref=IDirectSoundNotify_Release(state.notify);
    ok(ref==0,"IDirectSoundNotify_Release(): has %d references, should have "
       "0\n",ref);

    rc=IDirectSoundCaptureBuffer_Start(dscbo,DSCBSTART_LOOPING);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_Start() failed: %08x\n", rc);

    rc=IDirectSoundCaptureBuffer_Start(dscbo,0);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_Start() failed: %08x\n", rc);

    rc=IDirectSoundCaptureBuffer_GetStatus(dscbo,&status);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_GetStatus() failed: %08x\n", rc);
    ok(status==(DSCBSTATUS_CAPTURING|DSCBSTATUS_LOOPING) || broken(status==DSCBSTATUS_CAPTURING),
       "GetStatus: bad status: %x\n",status);

    if (record) {

 for (i = 0; i < (NOTIFICATIONS * 2); i++) {
     rc=WaitForMultipleObjects(NOTIFICATIONS,state.event,FALSE,3000);
     ok(rc==(WAIT_OBJECT_0+(i%NOTIFICATIONS)),
               "WaitForMultipleObjects failed: 0x%x\n",rc);
     if (rc!=(WAIT_OBJECT_0+(i%NOTIFICATIONS))) {
  ok((rc==WAIT_TIMEOUT)||(rc==WAIT_FAILED),
                   "Wrong notification: should be %d, got %d\n",
      i%NOTIFICATIONS,rc-WAIT_OBJECT_0);
     }
     if (!capture_buffer_service(&state))
  break;
 }

    }
    rc=IDirectSoundCaptureBuffer_Stop(dscbo);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_Stop() failed: %08x\n", rc);

    rc=IDirectSoundCaptureBuffer_Stop(dscbo);
    ok(rc==DS_OK,"IDirectSoundCaptureBuffer_Stop() failed: %08x\n", rc);
}
