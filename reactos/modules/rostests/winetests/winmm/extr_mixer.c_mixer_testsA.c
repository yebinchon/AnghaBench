
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int capsA ;
typedef scalar_t__ UINT ;
typedef scalar_t__ MMRESULT ;
typedef int MIXERCAPSA ;


 scalar_t__ MMSYSERR_BADDEVICEID ;
 scalar_t__ mixerGetDevCapsA (scalar_t__,int *,int) ;
 scalar_t__ mixerGetNumDevs () ;
 int mixer_test_deviceA (scalar_t__) ;
 int mmsys_error (scalar_t__) ;
 int ok (int,char*,int ) ;
 int trace (char*,...) ;

__attribute__((used)) static void mixer_testsA(void)
{
    MIXERCAPSA capsA;
    MMRESULT rc;
    UINT ndev, d;

    trace("--- Testing ASCII functions ---\n");

    ndev=mixerGetNumDevs();
    trace("found %d Mixer devices\n",ndev);

    rc=mixerGetDevCapsA(ndev+1,&capsA,sizeof(capsA));
    ok(rc==MMSYSERR_BADDEVICEID,
       "mixerGetDevCapsA: MMSYSERR_BADDEVICEID expected, got %s\n",
       mmsys_error(rc));

    for (d=0;d<ndev;d++)
        mixer_test_deviceA(d);
}
