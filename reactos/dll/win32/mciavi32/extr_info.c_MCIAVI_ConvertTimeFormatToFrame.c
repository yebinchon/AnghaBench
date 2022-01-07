
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwMicroSecPerFrame; } ;
struct TYPE_5__ {int dwMciTimeFormat; TYPE_1__ mah; } ;
typedef TYPE_2__ WINE_MCIAVI ;
typedef int DWORD ;




 int TRACE (char*,int,int,int,int) ;
 int WARN (char*,int) ;

DWORD MCIAVI_ConvertTimeFormatToFrame(WINE_MCIAVI* wma, DWORD val)
{
    DWORD ret = 0;

    switch (wma->dwMciTimeFormat) {
    case 128:
 ret = (val * 1000) / wma->mah.dwMicroSecPerFrame;
 break;
    case 129:
 ret = val;
 break;
    default:
 WARN("Bad time format %u!\n", wma->dwMciTimeFormat);
    }
    TRACE("val=%u=0x%08x [tf=%u] => ret=%u\n", val, val, wma->dwMciTimeFormat, ret);
    return ret;
}
