
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
typedef int WAVEFORMATEX ;
struct TYPE_3__ {int dwFormatTagIndex; int dwFormatTag; int cbFormatSize; int szFormatTag; void* cStandardFormats; int fdwSupport; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMFORMATTAGDETAILSW ;
typedef int LRESULT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;



 int ALaw_Formats ;
 void* ARRAY_SIZE (int ) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int PCM_Formats ;
 int ULaw_Formats ;
 int WARN (char*,int) ;



 int WAVE_FORMAT_UNKNOWN ;
 int lstrcpyW (int ,char const*) ;

__attribute__((used)) static LRESULT G711_FormatTagDetails(PACMFORMATTAGDETAILSW aftd, DWORD dwQuery)
{
    static const WCHAR szPcm[]={'P','C','M',0};
    static const WCHAR szALaw[]={'A','-','L','a','w',0};
    static const WCHAR szULaw[]={'U','-','L','a','w',0};

    switch (dwQuery)
    {
    case 132:
 if (aftd->dwFormatTagIndex >= 3) return ACMERR_NOTPOSSIBLE;
 break;
    case 131:
 if (aftd->dwFormatTag == WAVE_FORMAT_UNKNOWN)
        {
            aftd->dwFormatTagIndex = 1;
     break;
 }

    case 133:
 switch (aftd->dwFormatTag)
        {
 case 128: aftd->dwFormatTagIndex = 0; break;
 case 130: aftd->dwFormatTagIndex = 1; break;
 case 129: aftd->dwFormatTagIndex = 2; break;
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
 aftd->dwFormatTag = 130;
 aftd->cbFormatSize = sizeof(WAVEFORMATEX);
 aftd->cStandardFormats = ARRAY_SIZE(ALaw_Formats);
        lstrcpyW(aftd->szFormatTag, szALaw);
 break;
    case 2:
 aftd->dwFormatTag = 129;
 aftd->cbFormatSize = sizeof(WAVEFORMATEX);
 aftd->cStandardFormats = ARRAY_SIZE(ULaw_Formats);
        lstrcpyW(aftd->szFormatTag, szULaw);
 break;
    }
    return MMSYSERR_NOERROR;
}
