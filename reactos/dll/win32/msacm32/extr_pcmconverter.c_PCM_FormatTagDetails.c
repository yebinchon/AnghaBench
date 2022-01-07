
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwFormatTagIndex; int cbFormatSize; scalar_t__* szFormatTag; int cStandardFormats; int fdwSupport; int dwFormatTag; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMFORMATTAGDETAILSW ;
typedef int LRESULT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CONVERTER ;
 int ACMERR_NOTPOSSIBLE ;



 int ARRAY_SIZE (int ) ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 int PCM_Formats ;
 int TRACE (char*,TYPE_1__*,int) ;
 int WARN (char*,...) ;
 int WAVE_FORMAT_PCM ;
 int WAVE_FORMAT_UNKNOWN ;

__attribute__((used)) static LRESULT PCM_FormatTagDetails(PACMFORMATTAGDETAILSW aftd, DWORD dwQuery)
{
    TRACE("(%p, %08x)\n", aftd, dwQuery);

    switch (dwQuery) {
    case 129:
 if (aftd->dwFormatTagIndex != 0) {
            WARN("not possible\n");
            return ACMERR_NOTPOSSIBLE;
        }
 break;
    case 130:
 if (aftd->dwFormatTag != WAVE_FORMAT_PCM) {
            WARN("not possible\n");
            return ACMERR_NOTPOSSIBLE;
        }
 break;
    case 128:
 if (aftd->dwFormatTag != WAVE_FORMAT_UNKNOWN &&
     aftd->dwFormatTag != WAVE_FORMAT_PCM) {
            WARN("not possible\n");
     return ACMERR_NOTPOSSIBLE;
        }
 break;
    default:
 WARN("Unsupported query %08x\n", dwQuery);
 return MMSYSERR_NOTSUPPORTED;
    }

    aftd->dwFormatTagIndex = 0;
    aftd->dwFormatTag = WAVE_FORMAT_PCM;
    aftd->cbFormatSize = sizeof(PCMWAVEFORMAT);
    aftd->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CONVERTER;
    aftd->cStandardFormats = ARRAY_SIZE(PCM_Formats);
    aftd->szFormatTag[0] = 0;

    return MMSYSERR_NOERROR;
}
