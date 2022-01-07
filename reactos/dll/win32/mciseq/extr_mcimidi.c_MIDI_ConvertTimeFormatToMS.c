
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwMciTimeFormat; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
typedef int DWORD ;


 int HIBYTE (int ) ;
 int HIWORD (int) ;
 int LOBYTE (int ) ;
 int LOWORD (int) ;




 int TIME_MS_IN_ONE_HOUR ;
 int TIME_MS_IN_ONE_MINUTE ;
 int TIME_MS_IN_ONE_SECOND ;
 int WARN (char*,int) ;

__attribute__((used)) static DWORD MIDI_ConvertTimeFormatToMS(WINE_MCIMIDI* wmm, DWORD val)
{
    DWORD ret = 0;

    switch (wmm->dwMciTimeFormat) {
    case 131:
 ret = val;
 break;
    case 130:
 ret =
     (HIBYTE(HIWORD(val)) * 125) / 3 + LOBYTE(HIWORD(val)) * TIME_MS_IN_ONE_SECOND +
     HIBYTE(LOWORD(val)) * TIME_MS_IN_ONE_MINUTE + LOBYTE(LOWORD(val)) * TIME_MS_IN_ONE_HOUR;
 break;
    case 129:
 ret =
     HIBYTE(HIWORD(val)) * 40 + LOBYTE(HIWORD(val)) * TIME_MS_IN_ONE_SECOND +
     HIBYTE(LOWORD(val)) * TIME_MS_IN_ONE_MINUTE + LOBYTE(LOWORD(val)) * TIME_MS_IN_ONE_HOUR;
 break;
    case 128:
 ret =
     (HIBYTE(HIWORD(val)) * 100) / 3 + LOBYTE(HIWORD(val)) * TIME_MS_IN_ONE_SECOND +
     HIBYTE(LOWORD(val)) * TIME_MS_IN_ONE_MINUTE + LOBYTE(LOWORD(val)) * TIME_MS_IN_ONE_HOUR;
 break;
    default:
 WARN("Bad time format %u!\n", wmm->dwMciTimeFormat);
    }



    return ret;
}
