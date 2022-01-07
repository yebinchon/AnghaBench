
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* lpMidiHdr; int hDevice; int wFlags; int dwStartTicks; int hEvent; } ;
typedef TYPE_2__ WINE_MIDIStream ;
struct TYPE_15__ {int dwStreamID; } ;
struct TYPE_14__ {int dwFlags; int dwBufferLength; int dwOffset; struct TYPE_14__* lpNext; int dwBytesRecorded; int lpData; } ;
struct TYPE_13__ {int message; int lParam; int wParam; } ;
struct TYPE_10__ {int dwInstance; int dwCallback; } ;
struct TYPE_12__ {TYPE_1__ mod; } ;
typedef TYPE_3__* LPWINE_MIDI ;
typedef TYPE_4__* LPMSG ;
typedef TYPE_5__* LPMIDIHDR ;
typedef TYPE_6__* LPMIDIEVENT ;
typedef int* LPBYTE ;
typedef int HDRVR ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int DriverCallback (int ,int ,int ,int ,int ,int,int ) ;
 int FALSE ;
 int FIXME (char*,...) ;
 int GetTickCount () ;
 int MHDR_DONE ;
 int MHDR_INQUEUE ;
 int MHDR_ISSTRM ;
 int MM_MOM_DONE ;
 int SetEvent (int ) ;
 int TRACE (char*,...) ;
 int TRUE ;



 int dwToGo ;
 int midiOutReset (int ) ;
 int min (int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static BOOL MMSYSTEM_MidiStream_MessageHandler(WINE_MIDIStream* lpMidiStrm, LPWINE_MIDI lpwm, LPMSG msg)
{
    LPMIDIHDR lpMidiHdr;
    LPMIDIHDR* lpmh;
    LPBYTE lpData;

    switch (msg->message) {
    case 128:
 SetEvent(lpMidiStrm->hEvent);
 return FALSE;
    case 129:
 TRACE("STOP\n");

 midiOutReset(lpMidiStrm->hDevice);

 for (lpMidiHdr = lpMidiStrm->lpMidiHdr; lpMidiHdr; lpMidiHdr = lpMidiHdr->lpNext) {
     lpMidiHdr->dwFlags |= MHDR_DONE;
     lpMidiHdr->dwFlags &= ~MHDR_INQUEUE;

     DriverCallback(lpwm->mod.dwCallback, lpMidiStrm->wFlags,
      (HDRVR)lpMidiStrm->hDevice, MM_MOM_DONE,
      lpwm->mod.dwInstance, (DWORD_PTR)lpMidiHdr, 0);
 }
 lpMidiStrm->lpMidiHdr = 0;
 SetEvent(lpMidiStrm->hEvent);
 break;
    case 130:

 if (!lpMidiStrm->dwStartTicks)
     lpMidiStrm->dwStartTicks = GetTickCount();
 lpMidiHdr = (LPMIDIHDR)msg->lParam;
 lpData = (LPBYTE)lpMidiHdr->lpData;
 TRACE("Adding %s lpMidiHdr=%p [lpData=0x%p dwBufferLength=%u/%u dwFlags=0x%08x size=%lu]\n",
       (lpMidiHdr->dwFlags & MHDR_ISSTRM) ? "stream" : "regular", lpMidiHdr,
       lpMidiHdr, lpMidiHdr->dwBufferLength, lpMidiHdr->dwBytesRecorded,
       lpMidiHdr->dwFlags, msg->wParam);
 if (((LPMIDIEVENT)lpData)->dwStreamID != 0 &&
     ((LPMIDIEVENT)lpData)->dwStreamID != 0xFFFFFFFF &&

     ((LPMIDIEVENT)lpData)->dwStreamID != (DWORD_PTR)lpMidiStrm) {
     FIXME("Dropping bad %s lpMidiHdr (streamID=%08x)\n",
    (lpMidiHdr->dwFlags & MHDR_ISSTRM) ? "stream" : "regular",
    ((LPMIDIEVENT)lpData)->dwStreamID);
     lpMidiHdr->dwFlags |= MHDR_DONE;
     lpMidiHdr->dwFlags &= ~MHDR_INQUEUE;

     DriverCallback(lpwm->mod.dwCallback, lpMidiStrm->wFlags,
      (HDRVR)lpMidiStrm->hDevice, MM_MOM_DONE,
      lpwm->mod.dwInstance, (DWORD_PTR)lpMidiHdr, 0);
     break;
 }

 for (lpmh = &lpMidiStrm->lpMidiHdr; *lpmh; lpmh = &(*lpmh)->lpNext);
 *lpmh = lpMidiHdr;
 lpMidiHdr = (LPMIDIHDR)msg->lParam;
 lpMidiHdr->lpNext = 0;
 lpMidiHdr->dwFlags |= MHDR_INQUEUE;
 lpMidiHdr->dwFlags &= ~MHDR_DONE;
 lpMidiHdr->dwOffset = 0;

 break;
    default:
 FIXME("Unknown message %d\n", msg->message);
 break;
    }
    return TRUE;
}
