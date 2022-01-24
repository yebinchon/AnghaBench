#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  capsA ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  MIXERCAPSA ;

/* Variables and functions */
 scalar_t__ MMSYSERR_BADDEVICEID ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    MIXERCAPSA capsA;
    MMRESULT rc;
    UINT ndev, d;

    FUNC5("--- Testing ASCII functions ---\n");

    ndev=FUNC1();
    FUNC5("found %d Mixer devices\n",ndev);

    rc=FUNC0(ndev+1,&capsA,sizeof(capsA));
    FUNC4(rc==MMSYSERR_BADDEVICEID,
       "mixerGetDevCapsA: MMSYSERR_BADDEVICEID expected, got %s\n",
       FUNC3(rc));

    for (d=0;d<ndev;d++)
        FUNC2(d);
}