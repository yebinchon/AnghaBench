
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int dwFormatTagIndex; int dwFormatTag; int cbFormatSize; int szFormatTag; void* cStandardFormats; int fdwSupport; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMFORMATTAGDETAILSW ;
typedef int LRESULT ;
typedef int GSM610WAVEFORMAT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;



 void* ARRAY_SIZE (int ) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int WARN (char*,int) ;


 int WAVE_FORMAT_UNKNOWN ;
 int gsm_rates ;
 int lstrcpyW (int ,char const*) ;

__attribute__((used)) static LRESULT GSM_FormatTagDetails(PACMFORMATTAGDETAILSW aftd, DWORD dwQuery)
{
    static const WCHAR szPcm[]={'P','C','M',0};
    static const WCHAR szGsm[]={'G','S','M',' ','6','.','1','0',0};

    switch (dwQuery)
    {
    case 131:
 if (aftd->dwFormatTagIndex > 1) return ACMERR_NOTPOSSIBLE;
 break;
    case 130:
 if (aftd->dwFormatTag == WAVE_FORMAT_UNKNOWN)
        {
            aftd->dwFormatTagIndex = 1;
     break;
 }

    case 132:
 switch (aftd->dwFormatTag)
        {
 case 128: aftd->dwFormatTagIndex = 0; break;
 case 129: aftd->dwFormatTagIndex = 1; break;
 default: return ACMERR_NOTPOSSIBLE;
 }
 break;
    default:
 WARN("Unsupported query %08x\n", dwQuery);
 return MMSYSERR_NOTSUPPORTED;
    }

    aftd->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CODEC;
    switch (aftd->dwFormatTagIndex)
    {
    case 0:
 aftd->dwFormatTag = 128;
 aftd->cbFormatSize = sizeof(PCMWAVEFORMAT);
 aftd->cStandardFormats = ARRAY_SIZE(gsm_rates);
        lstrcpyW(aftd->szFormatTag, szPcm);
        break;
    case 1:
 aftd->dwFormatTag = 129;
 aftd->cbFormatSize = sizeof(GSM610WAVEFORMAT);
 aftd->cStandardFormats = ARRAY_SIZE(gsm_rates);
        lstrcpyW(aftd->szFormatTag, szGsm);
 break;
    }
    return MMSYSERR_NOERROR;
}
