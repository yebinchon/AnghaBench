
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WINE_MIDIStream ;
struct TYPE_6__ {scalar_t__ dwStreamID; } ;
struct TYPE_7__ {TYPE_1__ rgIds; } ;
struct TYPE_8__ {TYPE_2__ mod; } ;
typedef TYPE_3__ WINE_MIDI ;
typedef scalar_t__ ULONG_PTR ;
typedef TYPE_3__* LPWINE_MIDI ;
typedef int HMIDISTRM ;
typedef int BOOL ;


 int FALSE ;
 int MMDRV_Get (int ,int ,int ) ;
 int MMDRV_MIDIOUT ;

__attribute__((used)) static BOOL MMSYSTEM_GetMidiStream(HMIDISTRM hMidiStrm, WINE_MIDIStream** lpMidiStrm, WINE_MIDI** lplpwm)
{
    WINE_MIDI* lpwm = (LPWINE_MIDI)MMDRV_Get(hMidiStrm, MMDRV_MIDIOUT, FALSE);

    if (lplpwm)
 *lplpwm = lpwm;

    if (lpwm == ((void*)0)) {
 return FALSE;
    }

    *lpMidiStrm = (WINE_MIDIStream*)(ULONG_PTR)lpwm->mod.rgIds.dwStreamID;

    return *lpMidiStrm != ((void*)0);
}
