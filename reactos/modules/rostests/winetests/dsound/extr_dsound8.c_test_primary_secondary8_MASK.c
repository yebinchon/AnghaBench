#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wfx ;
typedef  int /*<<< orphan*/  dscaps ;
typedef  int /*<<< orphan*/  bufdesc ;
struct TYPE_12__ {scalar_t__ wFormatTag; scalar_t__ nSamplesPerSec; scalar_t__ wBitsPerSample; scalar_t__ nChannels; int nAvgBytesPerSec; int /*<<< orphan*/  nBlockAlign; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
struct TYPE_13__ {int dwSize; TYPE_1__* lpwfxFormat; int /*<<< orphan*/  dwBufferBytes; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/  LPGUID ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUNDBUFFER ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  int HRESULT ;
typedef  TYPE_2__ DSCAPS ;
typedef  TYPE_2__ DSBUFFERDESC ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int /*<<< orphan*/  DSBCAPS_GETCURRENTPOSITION2 ; 
 int /*<<< orphan*/  DSBCAPS_PRIMARYBUFFER ; 
 int DSERR_ALLOCATED ; 
 int DSERR_GENERIC ; 
 int DSERR_INVALIDPARAM ; 
 int DSERR_NODRIVER ; 
 int /*<<< orphan*/  DSSCL_NORMAL ; 
 int /*<<< orphan*/  DSSCL_PRIORITY ; 
 int DS_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 unsigned int NB_FORMATS ; 
 unsigned int NB_TAGS ; 
 scalar_t__ WAVE_FORMAT_IEEE_FLOAT ; 
 scalar_t__ WAVE_FORMAT_PCM ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__* format_tags ; 
 int** formats ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static HRESULT FUNC17(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND8 dso=NULL;
    LPDIRECTSOUNDBUFFER primary=NULL,secondary=NULL;
    DSBUFFERDESC bufdesc;
    DSCAPS dscaps;
    WAVEFORMATEX wfx, wfx2;
    int ref;
    unsigned int f, tag;

    /* Create the DirectSound object */
    rc=FUNC14(lpGuid,&dso,NULL);
    FUNC13(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED,
       "DirectSoundCreate8() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    /* Get the device capabilities */
    FUNC8(&dscaps, sizeof(dscaps));
    dscaps.dwSize=sizeof(dscaps);
    rc=FUNC1(dso,&dscaps);
    FUNC13(rc==DS_OK,"IDirectSound8_GetCaps() failed: %08x\n",rc);
    if (rc!=DS_OK)
        goto EXIT;

    /* We must call SetCooperativeLevel before creating primary buffer */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_PRIORITY */
    rc=FUNC3(dso,FUNC11(),DSSCL_PRIORITY);
    FUNC13(rc==DS_OK,"IDirectSound8_SetCooperativeLevel() failed: %08x\n", rc);
    if (rc!=DS_OK)
        goto EXIT;

    FUNC8(&bufdesc, sizeof(bufdesc));
    bufdesc.dwSize=sizeof(bufdesc);
    bufdesc.dwFlags=DSBCAPS_PRIMARYBUFFER;
    rc=FUNC0(dso,&bufdesc,&primary,NULL);
    FUNC13(rc==DS_OK && primary!=NULL,
       "IDirectSound8_CreateSoundBuffer() failed to create a primary buffer "
       "%08x\n",rc);

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
            rc=FUNC3(dso,FUNC11(),DSSCL_PRIORITY);
            FUNC13(rc==DS_OK,"IDirectSound8_SetCooperativeLevel() failed: %08x\n", rc);
            if (rc!=DS_OK)
                goto EXIT;

            FUNC12(&wfx,format_tags[tag],formats[f][0],formats[f][1],
                        formats[f][2]);
            wfx2=wfx;
            rc=FUNC6(primary,&wfx);
            FUNC13(rc==DS_OK
               || rc==DSERR_INVALIDPARAM, /* 2003 */
               "IDirectSoundBuffer_SetFormat(%s) failed: %08x\n",
               FUNC10(&wfx), rc);

            /* There is no guarantee that SetFormat will actually change the
             * format to what we asked for. It depends on what the soundcard
             * supports. So we must re-query the format.
             */
            rc=FUNC4(primary,&wfx,sizeof(wfx),NULL);
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
            rc=FUNC3(dso,FUNC11(),DSSCL_NORMAL);
            FUNC13(rc==DS_OK,"IDirectSound8_SetCooperativeLevel() failed: %08x\n", rc);

            FUNC12(&wfx2,WAVE_FORMAT_PCM,11025,16,2);

            secondary=NULL;
            FUNC8(&bufdesc, sizeof(bufdesc));
            bufdesc.dwSize=sizeof(bufdesc);
            bufdesc.dwFlags=DSBCAPS_GETCURRENTPOSITION2;
            bufdesc.dwBufferBytes=FUNC9(wfx.nAvgBytesPerSec*BUFFER_LEN/1000,
                                        wfx.nBlockAlign);
            bufdesc.lpwfxFormat=&wfx2;
            if (winetest_interactive) {
                FUNC16("  Testing a primary buffer at %dx%dx%d (fmt=%d) with a "
                      "secondary buffer at %dx%dx%d\n",
                      wfx.nSamplesPerSec,wfx.wBitsPerSample,wfx.nChannels,format_tags[tag],
                      wfx2.nSamplesPerSec,wfx2.wBitsPerSample,wfx2.nChannels);
            }
            rc=FUNC7(dso,&bufdesc,&secondary,NULL);
            FUNC13(rc==DS_OK && secondary!=NULL,
               "IDirectSound_CreateSoundBuffer() failed to create a secondary "
               "buffer %08x\n",rc);

            if (rc==DS_OK && secondary!=NULL) {
                FUNC15(dso,&secondary,0,FALSE,0,FALSE,0,
                             winetest_interactive,1.0,0,NULL,0,0);

                ref=FUNC5(secondary);
                FUNC13(ref==0,"IDirectSoundBuffer_Release() has %d references, "
                   "should have 0\n",ref);
            }
          }
        }

        ref=FUNC5(primary);
        FUNC13(ref==0,"IDirectSoundBuffer_Release() primary has %d references, "
           "should have 0\n",ref);
    }

    /* Set the CooperativeLevel back to normal */
    /* DSOUND: Setting DirectSound cooperative level to DSSCL_NORMAL */
    rc=FUNC3(dso,FUNC11(),DSSCL_NORMAL);
    FUNC13(rc==DS_OK,"IDirectSound8_SetCooperativeLevel() failed: %08x\n", rc);

EXIT:
    ref=FUNC2(dso);
    FUNC13(ref==0,"IDirectSound8_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}