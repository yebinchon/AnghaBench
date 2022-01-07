
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WINE_MCIMIDI ;
typedef scalar_t__* LPWORD ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BYTE ;


 scalar_t__ MCIERR_INVALID_FILE ;
 scalar_t__ MIDI_mciReadByte (int *,scalar_t__*) ;

__attribute__((used)) static DWORD MIDI_mciReadWord(WINE_MCIMIDI* wmm, LPWORD lpw)
{
    BYTE hibyte, lobyte;
    DWORD ret = MCIERR_INVALID_FILE;

    if (MIDI_mciReadByte(wmm, &hibyte) == 0 &&
 MIDI_mciReadByte(wmm, &lobyte) == 0) {
 *lpw = ((WORD)hibyte << 8) + lobyte;
 ret = 0;
    }
    return ret;
}
