
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwMciTimeFormat; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
typedef int DWORD ;


 int FIXME (char*) ;




 int TIME_MS_IN_ONE_HOUR ;
 int TIME_MS_IN_ONE_MINUTE ;
 int TIME_MS_IN_ONE_SECOND ;
 int WARN (char*,int) ;

__attribute__((used)) static DWORD MIDI_ConvertMSToTimeFormat(WINE_MCIMIDI* wmm, DWORD _val)
{
    DWORD ret = 0, val = _val;
    DWORD h, m, s, f;

    switch (wmm->dwMciTimeFormat) {
    case 131:
 ret = val;
 break;
    case 130:
    case 129:
    case 128:
 h = val / TIME_MS_IN_ONE_HOUR;
 m = (val -= h * TIME_MS_IN_ONE_HOUR) / TIME_MS_IN_ONE_MINUTE;
 s = (val -= m * TIME_MS_IN_ONE_MINUTE) / TIME_MS_IN_ONE_SECOND;
 switch (wmm->dwMciTimeFormat) {
 case 130:

     f = (val * 3) / 125; val -= (f * 125) / 3;
     break;
 case 129:

     f = val / 40; val -= f * 40;
     break;
 case 128:

     f = (val * 3) / 100; val -= (f * 100) / 3;
     break;
 default:
     FIXME("There must be some bad bad programmer\n");
     f = 0;
 }


 ret = (f << 24) | (s << 16) | (m << 8) | (h << 0);
 break;
    default:
 WARN("Bad time format %u!\n", wmm->dwMciTimeFormat);
    }



    return ret;
}
