
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MMRESULT ;
typedef int HMIXER ;


 scalar_t__ MMSYSERR_INVALHANDLE ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ mixerClose (int ) ;
 int mmsys_error (scalar_t__) ;
 int ok (int,char*,int ) ;

__attribute__((used)) static void test_mixerClose(HMIXER mix)
{
    MMRESULT rc;

    rc = mixerClose(mix);
    ok(rc == MMSYSERR_NOERROR || rc == MMSYSERR_INVALHANDLE,
       "mixerClose: MMSYSERR_NOERROR or MMSYSERR_INVALHANDLE expected, got %s\n",
       mmsys_error(rc));
}
