
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WINE_MCIMIDI ;
typedef int * LPDWORD ;
typedef scalar_t__ DWORD ;


 int MAKELONG (int ,int ) ;
 scalar_t__ MCIERR_INVALID_FILE ;
 scalar_t__ MIDI_mciReadWord (int *,int *) ;

__attribute__((used)) static DWORD MIDI_mciReadLong(WINE_MCIMIDI* wmm, LPDWORD lpdw)
{
    WORD hiword, loword;
    DWORD ret = MCIERR_INVALID_FILE;

    if (MIDI_mciReadWord(wmm, &hiword) == 0 &&
 MIDI_mciReadWord(wmm, &loword) == 0) {
 *lpdw = MAKELONG(loword, hiword);
 ret = 0;
    }
    return ret;
}
