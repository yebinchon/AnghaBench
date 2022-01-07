
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int capsW ;
typedef scalar_t__ UINT ;
typedef scalar_t__ MMRESULT ;
typedef int MIXERCAPSW ;


 scalar_t__ MMSYSERR_BADDEVICEID ;
 scalar_t__ MMSYSERR_NOTSUPPORTED ;
 scalar_t__ mixerGetDevCapsW (scalar_t__,int *,int) ;
 scalar_t__ mixerGetNumDevs () ;
 int mixer_test_deviceW (scalar_t__) ;
 int mmsys_error (scalar_t__) ;
 int ok (int,char*,int ) ;
 int trace (char*,...) ;

__attribute__((used)) static void mixer_testsW(void)
{
    MIXERCAPSW capsW;
    MMRESULT rc;
    UINT ndev, d;

    trace("--- Testing WCHAR functions ---\n");

    ndev=mixerGetNumDevs();
    trace("found %d Mixer devices\n",ndev);

    rc=mixerGetDevCapsW(ndev+1,&capsW,sizeof(capsW));
    ok(rc==MMSYSERR_BADDEVICEID||rc==MMSYSERR_NOTSUPPORTED,
       "mixerGetDevCapsW: MMSYSERR_BADDEVICEID or MMSYSERR_NOTSUPPORTED "
       "expected, got %s\n", mmsys_error(rc));
    if (rc==MMSYSERR_NOTSUPPORTED)
        return;

    for (d=0;d<ndev;d++)
        mixer_test_deviceW(d);
}
