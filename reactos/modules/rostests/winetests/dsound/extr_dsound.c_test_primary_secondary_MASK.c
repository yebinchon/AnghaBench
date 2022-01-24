#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wfx ;
typedef  int /*<<< orphan*/  dscaps ;
typedef  int /*<<< orphan*/  bufdesc ;
struct TYPE_11__ {int wBitsPerSample; scalar_t__ wFormatTag; scalar_t__ nSamplesPerSec; int nAvgBytesPerSec; int /*<<< orphan*/  nChannels; int /*<<< orphan*/  nBlockAlign; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
struct TYPE_12__ {int dwSize; TYPE_1__* lpwfxFormat; int /*<<< orphan*/  dwBufferBytes; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND ;
typedef  int HRESULT ;
typedef  TYPE_2__ DSCAPS ;
typedef  TYPE_2__ DSBUFFERDESC ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int /*<<< orphan*/  DSBCAPS_GETCURRENTPOSITION2 ; 
 int /*<<< orphan*/  DSBCAPS_PRIMARYBUFFER ; 
 int DSERR_ALLOCATED ; 
 int DSERR_CONTROLUNAVAIL ; 
 int DSERR_GENERIC ; 
 int DSERR_NODRIVER ; 
 int /*<<< orphan*/  DSSCL_NORMAL ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 int DS_OK ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NB_FORMATS ; 
 int NB_TAGS ; 
 scalar_t__ WAVE_FORMAT_IEEE_FLOAT ; 
 scalar_t__ WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__* format_tags ; 
 int** formats ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,int,int,scalar_t__,scalar_t__,int,...) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static HRESULT FUNC17(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=NULL;
    LPDIRECTSOUNDBUFFER primary=NULL,secondary=NULL;
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    WAVEFORMATEX wfx, wfx2;
    int f,ref,tag;

    /* Create the DirectSound object */
    rc=FUNC14(lpGuid,&dso,NULL);
    FUNC13(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    /* Get the device capabilities */
    FUNC7(&dscaps, sizeof(dscaps));
    dscaps.dwSize=sizeof(dscaps);
    rc=FUNC4(dso,&dscaps);
    FUNC13(rc==DS_OK,"IDirectSound_GetCaps() failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;

    /* We must call SetCooperativeLevel before creating primary buffer */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_PRIORITY */
    rc=FUNC6(dso,FUNC11(),DSSCL_PRIORITY);
    FUNC13(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);
    if (rc!=DS_OK)
        goto EXIT;

    FUNC7(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER;
    rc=FUNC3(dso,&bufdesc,&primary,NULL);
    FUNC13(rc==DS_OK && primary!=NULL,
       "IDirectSound_CreateSoundBuffer() failed to create a primary buffer %08x\n",rc);

    if (rc==DS_OK && primary!=NULL) {
        for (f=0;f<NB_FORMATS;f++) {
          for (tag=0;tag<NB_TAGS;tag++) {
            /* if float, we only want to test 32-bit */
            if ((format_tags[tag] == WAVE_FORMAT_IEEE_FLOAT) && (formats[f][1] != 32))
                continue;

            /* We must call SetCooperativeLevel to be allowed to call
             * SetFormat */
            /* DSOUND: Setting DirectSound cooperative level to
             * DSSCL_PRIORITY */
            rc=FUNC6(dso,FUNC11(),DSSCL_PRIORITY);
            FUNC13(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);
            if (rc!=DS_OK)
                goto EXIT;

            FUNC12(&wfx,format_tags[tag],formats[f][0],formats[f][1],
                        formats[f][2]);
            wfx2=wfx;
            rc=FUNC2(primary,&wfx);

            if (wfx.wBitsPerSample <= 16)
                FUNC13(rc==DS_OK,"IDirectSoundBuffer_SetFormat(%s) failed: %08x\n",
                   FUNC10(&wfx), rc);
            else
                FUNC13(rc==DS_OK || rc == E_INVALIDARG, "SetFormat (%s) failed: %08x\n",
                   FUNC10(&wfx), rc);

            /* There is no guarantee that SetFormat will actually change the
             * format to what we asked for. It depends on what the soundcard
             * supports. So we must re-query the format.
             */
            rc=FUNC0(primary,&wfx,sizeof(wfx),NULL);
            FUNC13(rc==DS_OK,"IDirectSoundBuffer_GetFormat() failed: %08x\n", rc);
            if (rc==DS_OK &&
                (wfx.wFormatTag!=wfx2.wFormatTag ||
                 wfx.nSamplesPerSec!=wfx2.nSamplesPerSec ||
                 wfx.wBitsPerSample!=wfx2.wBitsPerSample ||
                 wfx.nChannels!=wfx2.nChannels)) {
                FUNC16("Requested primary format tag=0x%04x %dx%dx%d "
                      "avg.B/s=%d align=%d\n",
                      wfx2.wFormatTag,wfx2.nSamplesPerSec,wfx2.wBitsPerSample,
                      wfx2.nChannels,wfx2.nAvgBytesPerSec,wfx2.nBlockAlign);
                FUNC16("Got tag=0x%04x %dx%dx%d avg.B/s=%d align=%d\n",
                      wfx.wFormatTag,wfx.nSamplesPerSec,wfx.wBitsPerSample,
                      wfx.nChannels,wfx.nAvgBytesPerSec,wfx.nBlockAlign);
            }

            /* Set the CooperativeLevel back to normal */
            /* DSOUND: Setting DirectSound cooperative level to DSSCL_NORMAL */
            rc=FUNC6(dso,FUNC11(),DSSCL_NORMAL);
            FUNC13(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);

            FUNC12(&wfx2,WAVE_FORMAT_PCM,11025,16,2);

            secondary=NULL;
            FUNC7(&bufdesc, sizeof(bufdesc));
            bufdesc.dwSize=sizeof(bufdesc);
            bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2;
            bufdesc.dwBufferBytes=FUNC8(wfx.nAvgBytesPerSec*BUFFER_LEN/1000,
                                        wfx.nBlockAlign);
            bufdesc.lpwfxFormat=&wfx2;
            if (winetest_interactive) {
                FUNC16("  Testing a primary buffer at %dx%dx%d (fmt=%d) with a "
                      "secondary buffer at %dx%dx%d\n",
                      wfx.nSamplesPerSec,wfx.wBitsPerSample,wfx.nChannels,format_tags[tag],
                      wfx2.nSamplesPerSec,wfx2.wBitsPerSample,wfx2.nChannels);
            }
            rc=FUNC3(dso,&bufdesc,&secondary,NULL);
            FUNC13((rc==DS_OK && secondary!=NULL) || FUNC9(rc == DSERR_CONTROLUNAVAIL), /* vmware drivers on w2k */
               "IDirectSound_CreateSoundBuffer() failed to create a secondary buffer %08x\n",rc);

            if (rc==DS_OK && secondary!=NULL) {
                FUNC15(dso,&secondary,0,FALSE,0,FALSE,0,
                            winetest_interactive,1.0,0,NULL,0,0,FALSE,0);

                ref=FUNC1(secondary);
                FUNC13(ref==0,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 0\n",ref);
            }
          }
        }

        ref=FUNC1(primary);
        FUNC13(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }

    /* Set the CooperativeLevel back to normal */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_NORMAL */
    rc=FUNC6(dso,FUNC11(),DSSCL_NORMAL);
    FUNC13(rc==DS_OK,"IDirectSound_SetCooperativeLevel() failed: %08x\n", rc);

EXIT:
    ref=FUNC5(dso);
    FUNC13(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}