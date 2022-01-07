
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int aftd ;
struct TYPE_3__ {int cbStruct; int cbFormatSize; int dwFormatTag; int member_0; } ;
typedef int MPEGLAYER3WAVEFORMAT ;
typedef scalar_t__ MMRESULT ;
typedef TYPE_1__ ACMFORMATTAGDETAILSW ;


 int ACM_FORMATTAGDETAILSF_FORMATTAG ;
 scalar_t__ MMSYSERR_NOERROR ;
 int WAVE_FORMAT_MPEGLAYER3 ;
 scalar_t__ acmFormatTagDetailsW (int *,TYPE_1__*,int ) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_acmFormatTagDetails(void)
{
    ACMFORMATTAGDETAILSW aftd = {0};
    MMRESULT rc;

    aftd.cbStruct = sizeof(aftd);
    aftd.dwFormatTag = WAVE_FORMAT_MPEGLAYER3;
    rc = acmFormatTagDetailsW(((void*)0), &aftd, ACM_FORMATTAGDETAILSF_FORMATTAG);
    if (rc == MMSYSERR_NOERROR)
        ok(aftd.cbFormatSize == sizeof(MPEGLAYER3WAVEFORMAT), "got %d\n", aftd.cbFormatSize);
}
