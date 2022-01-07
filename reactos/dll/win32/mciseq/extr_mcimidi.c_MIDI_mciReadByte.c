
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hFile; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
typedef int HPSTR ;
typedef int DWORD ;
typedef int BYTE ;


 int MCIERR_INVALID_FILE ;
 int WARN (char*,TYPE_1__*) ;
 long mmioRead (int ,int ,int) ;

__attribute__((used)) static DWORD MIDI_mciReadByte(WINE_MCIMIDI* wmm, BYTE *lpbyt)
{
    DWORD ret = 0;

    if (mmioRead(wmm->hFile, (HPSTR)lpbyt, sizeof(BYTE)) != (long)sizeof(BYTE)) {
 WARN("Error reading wmm=%p\n", wmm);
 ret = MCIERR_INVALID_FILE;
    }

    return ret;
}
