#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wfx ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  dscbcaps ;
struct TYPE_9__ {int buffer_size; int size; int /*<<< orphan*/ * event; int /*<<< orphan*/ * notify; TYPE_6__* posnotify; TYPE_2__* wfx; int /*<<< orphan*/  dscbo; } ;
typedef  TYPE_1__ capture_state_t ;
struct TYPE_10__ {int /*<<< orphan*/  nBlockAlign; int /*<<< orphan*/  nAvgBytesPerSec; int /*<<< orphan*/  nChannels; int /*<<< orphan*/  wBitsPerSample; int /*<<< orphan*/  nSamplesPerSec; int /*<<< orphan*/  wFormatTag; } ;
typedef  TYPE_2__ WAVEFORMATEX ;
struct TYPE_12__ {int dwOffset; int /*<<< orphan*/  hEventNotify; } ;
struct TYPE_11__ {int dwSize; int dwBufferBytes; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/  LPDIRECTSOUNDCAPTUREBUFFER ;
typedef  int /*<<< orphan*/  LPDIRECTSOUNDCAPTURE ;
typedef  int HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ DSCBCAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DSCBSTART_LOOPING ; 
 scalar_t__ DSCBSTATUS_CAPTURING ; 
 scalar_t__ DSCBSTATUS_LOOPING ; 
 int DSERR_INVALIDPARAM ; 
 int DS_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,TYPE_6__*) ; 
 int /*<<< orphan*/  IID_IDirectSoundNotify ; 
 int NOTIFICATIONS ; 
 int WAIT_FAILED ; 
 int WAIT_OBJECT_0 ; 
 int WAIT_TIMEOUT ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,...) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC15(LPDIRECTSOUNDCAPTURE dsco,
				LPDIRECTSOUNDCAPTUREBUFFER dscbo, int record)
{
    HRESULT rc;
    DSCBCAPS dscbcaps;
    WAVEFORMATEX wfx;
    DWORD size,status;
    capture_state_t state;
    int i, ref;

    /* Private dsound.dll: Error: Invalid caps pointer */
    rc=FUNC1(dscbo,0);
    FUNC13(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetCaps() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    /* Private dsound.dll: Error: Invalid caps pointer */
    dscbcaps.dwSize=0;
    rc=FUNC1(dscbo,&dscbcaps);
    FUNC13(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetCaps() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    dscbcaps.dwSize=sizeof(dscbcaps);
    rc=FUNC1(dscbo,&dscbcaps);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_GetCaps() failed: %08x\n", rc);
    if (rc==DS_OK && winetest_debug > 1) {
	FUNC14("    Caps: size = %d flags=0x%08x buffer size=%d\n",
	    dscbcaps.dwSize,dscbcaps.dwFlags,dscbcaps.dwBufferBytes);
    }

    /* Query the format size. Note that it may not match sizeof(wfx) */
    /* Private dsound.dll: Error: Either pwfxFormat or pdwSizeWritten must
     * be non-NULL */
    rc=FUNC2(dscbo,NULL,0,NULL);
    FUNC13(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetFormat() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    size=0;
    rc=FUNC2(dscbo,NULL,0,&size);
    FUNC13(rc==DS_OK && size!=0,"IDirectSoundCaptureBuffer_GetFormat() should "
       "have returned the needed size: rc=%08x, size=%d\n", rc,size);

    rc=FUNC2(dscbo,&wfx,sizeof(wfx),NULL);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_GetFormat() failed: %08x\n", rc);
    if (rc==DS_OK && winetest_debug > 1) {
	FUNC14("    Format: tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\n",
	      wfx.wFormatTag,wfx.nSamplesPerSec,wfx.wBitsPerSample,
	      wfx.nChannels,wfx.nAvgBytesPerSec,wfx.nBlockAlign);
    }

    /* Private dsound.dll: Error: Invalid status pointer */
    rc=FUNC3(dscbo,0);
    FUNC13(rc==DSERR_INVALIDPARAM,"IDirectSoundCaptureBuffer_GetStatus() should "
       "have returned DSERR_INVALIDPARAM, returned: %08x\n", rc);

    rc=FUNC3(dscbo,&status);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_GetStatus() failed: %08x\n", rc);
    if (rc==DS_OK && winetest_debug > 1) {
	FUNC14("    Status=0x%04x\n",status);
    }

    FUNC10(&state, sizeof(state));
    state.dscbo=dscbo;
    state.wfx=&wfx;
    state.buffer_size = dscbcaps.dwBufferBytes;
    for (i = 0; i < NOTIFICATIONS; i++)
	state.event[i] = FUNC0( NULL, FALSE, FALSE, NULL );
    state.size = dscbcaps.dwBufferBytes / NOTIFICATIONS;

    rc=FUNC4(dscbo,&IID_IDirectSoundNotify,
                                                (void **)&(state.notify));
    FUNC13((rc==DS_OK)&&(state.notify!=NULL),
       "IDirectSoundCaptureBuffer_QueryInterface() failed: %08x\n", rc);

    for (i = 0; i < NOTIFICATIONS; i++) {
	state.posnotify[i].dwOffset = (i * state.size) + state.size - 1;
	state.posnotify[i].hEventNotify = state.event[i];
    }

    rc=FUNC8(state.notify,NOTIFICATIONS,
                                                   state.posnotify);
    FUNC13(rc==DS_OK,"IDirectSoundNotify_SetNotificationPositions() failed: %08x\n", rc);

    ref=FUNC7(state.notify);
    FUNC13(ref==0,"IDirectSoundNotify_Release(): has %d references, should have "
       "0\n",ref);

    rc=FUNC5(dscbo,DSCBSTART_LOOPING);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_Start() failed: %08x\n", rc);

    rc=FUNC5(dscbo,0);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_Start() failed: %08x\n", rc);

    rc=FUNC3(dscbo,&status);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_GetStatus() failed: %08x\n", rc);
    FUNC13(status==(DSCBSTATUS_CAPTURING|DSCBSTATUS_LOOPING) || FUNC11(status==DSCBSTATUS_CAPTURING),
       "GetStatus: bad status: %x\n",status);

    if (record) {
	/* wait for the notifications */
	for (i = 0; i < (NOTIFICATIONS * 2); i++) {
	    rc=FUNC9(NOTIFICATIONS,state.event,FALSE,3000);
	    FUNC13(rc==(WAIT_OBJECT_0+(i%NOTIFICATIONS)),
               "WaitForMultipleObjects failed: 0x%x\n",rc);
	    if (rc!=(WAIT_OBJECT_0+(i%NOTIFICATIONS))) {
		FUNC13((rc==WAIT_TIMEOUT)||(rc==WAIT_FAILED),
                   "Wrong notification: should be %d, got %d\n",
		    i%NOTIFICATIONS,rc-WAIT_OBJECT_0);
	    }
	    if (!FUNC12(&state))
		break;
	}

    }
    rc=FUNC6(dscbo);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_Stop() failed: %08x\n", rc);

    rc=FUNC6(dscbo);
    FUNC13(rc==DS_OK,"IDirectSoundCaptureBuffer_Stop() failed: %08x\n", rc);
}