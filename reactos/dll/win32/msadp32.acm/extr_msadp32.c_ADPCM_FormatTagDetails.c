
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
typedef int DWORD ;
typedef int ADPCMWAVEFORMAT ;
typedef int ADPCMCOEFSET ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;



 int ADPCM_Formats ;
 void* ARRAY_SIZE (int ) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int PCM_Formats ;
 int WARN (char*,int) ;


 int WAVE_FORMAT_UNKNOWN ;
 int lstrcpyW (int ,char const*) ;

__attribute__((used)) static LRESULT ADPCM_FormatTagDetails(PACMFORMATTAGDETAILSW aftd, DWORD dwQuery)
{
    static const WCHAR szPcm[]={'P','C','M',0};
    static const WCHAR szMsAdPcm[]={'M','i','c','r','o','s','o','f','t',' ','A','D','P','C','M',0};

    switch (dwQuery)
    {
    case 131:
 if (aftd->dwFormatTagIndex >= 2) return ACMERR_NOTPOSSIBLE;
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
 aftd->cStandardFormats = ARRAY_SIZE(PCM_Formats);
        lstrcpyW(aftd->szFormatTag, szPcm);
        break;
    case 1:
 aftd->dwFormatTag = 129;
 aftd->cbFormatSize = sizeof(ADPCMWAVEFORMAT) + (7 - 1) * sizeof(ADPCMCOEFSET);
 aftd->cStandardFormats = ARRAY_SIZE(ADPCM_Formats);
        lstrcpyW(aftd->szFormatTag, szMsAdPcm);
 break;
    }
    return MMSYSERR_NOERROR;
}
