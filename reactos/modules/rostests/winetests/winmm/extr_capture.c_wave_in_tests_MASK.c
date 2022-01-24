#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  capsW ;
typedef  int /*<<< orphan*/  capsA ;
typedef  int /*<<< orphan*/  WAVEINCAPSW ;
typedef  int /*<<< orphan*/  WAVEINCAPSA ;
struct TYPE_3__ {int nChannels; int wBitsPerSample; int nSamplesPerSec; int nBlockAlign; int nAvgBytesPerSec; scalar_t__ cbSize; int /*<<< orphan*/  wFormatTag; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
typedef  int UINT ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  HWAVEIN ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_NULL ; 
 int /*<<< orphan*/  DRVM_MAPPER_PREFERRED_GET ; 
 scalar_t__ MMSYSERR_BADDEVICEID ; 
 scalar_t__ MMSYSERR_NODRIVER ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ MMSYSERR_NOTSUPPORTED ; 
 int /*<<< orphan*/  WAVE_FORMAT_PCM ; 
 int WAVE_MAPPER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(void)
{
    WAVEINCAPSA capsA;
    WAVEINCAPSW capsW;
    WAVEFORMATEX format;
    HWAVEIN win;
    MMRESULT rc;
    DWORD preferred, status;
    UINT ndev,d;

    ndev=FUNC6();
    FUNC3("found %d WaveIn devices\n",ndev);

    rc = FUNC7((HWAVEIN)WAVE_MAPPER, DRVM_MAPPER_PREFERRED_GET,
            (DWORD_PTR)&preferred, (DWORD_PTR)&status);
    FUNC2((ndev == 0 && (rc == MMSYSERR_NODRIVER || rc == MMSYSERR_BADDEVICEID)) ||
            rc == MMSYSERR_NOTSUPPORTED ||
            rc == MMSYSERR_NOERROR, "waveInMessage(DRVM_MAPPER_PREFERRED_GET) failed: %u\n", rc);

    if(rc != MMSYSERR_NOTSUPPORTED)
        FUNC2((ndev == 0 && (preferred == -1 || FUNC0(preferred != -1))) ||
                preferred < ndev, "Got invalid preferred device: 0x%x\n", preferred);

    rc=FUNC4(ndev+1,&capsA,sizeof(capsA));
    FUNC2(rc==MMSYSERR_BADDEVICEID,
       "waveInGetDevCapsA(%s): MMSYSERR_BADDEVICEID expected, got %s\n",
       FUNC1(ndev+1),FUNC9(rc));

    rc=FUNC4(WAVE_MAPPER,&capsA,sizeof(capsA));
    FUNC2(rc==MMSYSERR_NOERROR || rc==MMSYSERR_NODRIVER || (!ndev && (rc==MMSYSERR_BADDEVICEID)),
       "waveInGetDevCapsA(%s): got %s\n",FUNC1(WAVE_MAPPER),FUNC9(rc));

    rc=FUNC5(ndev+1,&capsW,sizeof(capsW));
    FUNC2(rc==MMSYSERR_BADDEVICEID || rc==MMSYSERR_NOTSUPPORTED,
       "waveInGetDevCapsW(%s): MMSYSERR_BADDEVICEID or MMSYSERR_NOTSUPPORTED "
       "expected, got %s\n",FUNC1(ndev+1),FUNC9(rc));

    rc=FUNC5(WAVE_MAPPER,&capsW,sizeof(capsW));
    FUNC2(rc==MMSYSERR_NOERROR || rc==MMSYSERR_NODRIVER ||
       rc==MMSYSERR_NOTSUPPORTED || (!ndev && (rc==MMSYSERR_BADDEVICEID)),
       "waveInGetDevCapsW(%s): got %s\n", FUNC1(ndev+1),FUNC9(rc));

    format.wFormatTag=WAVE_FORMAT_PCM;
    format.nChannels=2;
    format.wBitsPerSample=16;
    format.nSamplesPerSec=44100;
    format.nBlockAlign=format.nChannels*format.wBitsPerSample/8;
    format.nAvgBytesPerSec=format.nSamplesPerSec*format.nBlockAlign;
    format.cbSize=0;
    rc=FUNC8(&win,ndev+1,&format,0,0,CALLBACK_NULL);
    FUNC2(rc==MMSYSERR_BADDEVICEID,
       "waveInOpen(%s): MMSYSERR_BADDEVICEID expected, got %s\n",
       FUNC1(ndev+1),FUNC9(rc));

    for (d=0;d<ndev;d++)
        FUNC10(d);

    if (ndev>0)
        FUNC10(WAVE_MAPPER);
}