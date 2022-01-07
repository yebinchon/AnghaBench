
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cksize; } ;
struct TYPE_8__ {int dwMciTimeFormat; TYPE_2__* lpWaveFormat; TYPE_1__ ckWaveData; } ;
typedef TYPE_3__ WINE_MCIWAVE ;
struct TYPE_7__ {int nSamplesPerSec; int nAvgBytesPerSec; } ;
typedef int DWORD ;





 int MulDiv (int ,int ,int) ;
 int TRACE (char*,int ,int ,int,int ) ;
 int WARN (char*,int) ;
 int WAVE_ConvertByteToTimeFormat (TYPE_3__*,int ) ;

__attribute__((used)) static DWORD WAVE_ConvertTimeFormatToByte(WINE_MCIWAVE* wmw, DWORD val)
{
    DWORD ret = 0;

    switch (wmw->dwMciTimeFormat) {
    case 129:
 ret = MulDiv(val,wmw->lpWaveFormat->nAvgBytesPerSec,1000);
 if (ret > wmw->ckWaveData.cksize &&
     val == WAVE_ConvertByteToTimeFormat(wmw, wmw->ckWaveData.cksize))
     ret = wmw->ckWaveData.cksize;
 break;
    case 130:
 ret = val;
 break;
    case 128:
 ret = MulDiv(val,wmw->lpWaveFormat->nAvgBytesPerSec,wmw->lpWaveFormat->nSamplesPerSec);
 break;
    default:
 WARN("Bad time format %u!\n", wmw->dwMciTimeFormat);
    }
    TRACE("val=%u=0x%08x [tf=%u] => ret=%u\n", val, val, wmw->dwMciTimeFormat, ret);
    return ret;
}
