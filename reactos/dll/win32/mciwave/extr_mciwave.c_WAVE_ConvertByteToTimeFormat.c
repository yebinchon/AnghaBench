
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dwMciTimeFormat; TYPE_1__* lpWaveFormat; } ;
typedef TYPE_2__ WINE_MCIWAVE ;
struct TYPE_4__ {int nSamplesPerSec; int nAvgBytesPerSec; } ;
typedef int DWORD ;





 int MulDiv (int ,int,int ) ;
 int TRACE (char*,int ,int ,int,int ) ;
 int WARN (char*,int) ;

__attribute__((used)) static DWORD WAVE_ConvertByteToTimeFormat(WINE_MCIWAVE* wmw, DWORD val)
{
    DWORD ret = 0;

    switch (wmw->dwMciTimeFormat) {
    case 129:
 ret = MulDiv(val,1000,wmw->lpWaveFormat->nAvgBytesPerSec);
 break;
    case 130:
 ret = val;
 break;
    case 128:
 ret = MulDiv(val,wmw->lpWaveFormat->nSamplesPerSec,wmw->lpWaveFormat->nAvgBytesPerSec);
 break;
    default:
 WARN("Bad time format %u!\n", wmw->dwMciTimeFormat);
    }
    TRACE("val=%u=0x%08x [tf=%u] => ret=%u\n", val, val, wmw->dwMciTimeFormat, ret);
    return ret;
}
