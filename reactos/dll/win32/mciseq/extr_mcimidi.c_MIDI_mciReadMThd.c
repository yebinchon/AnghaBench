
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_8__ {int wFormat; int nTracks; int nDivision; int dwTempo; TYPE_4__* tracks; int hFile; int dwMciTimeFormat; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
struct TYPE_9__ {size_t wTrackNr; } ;
typedef int MCI_MIDITRACK ;
typedef int HPSTR ;
typedef scalar_t__ FOURCC ;
typedef scalar_t__ DWORD ;


 int FIXME (char*,...) ;
 int GetProcessHeap () ;
 int HIBYTE (int) ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int LOBYTE (int) ;
 scalar_t__ MCIERR_INVALID_FILE ;
 scalar_t__ MCIERR_OUT_OF_MEMORY ;
 int MCI_FORMAT_MILLISECONDS ;
 int MCI_FORMAT_SMPTE_24 ;
 int MCI_FORMAT_SMPTE_25 ;
 int MCI_FORMAT_SMPTE_30 ;
 int MCI_FORMAT_SMPTE_30DROP ;
 scalar_t__ MIDI_mciReadLong (TYPE_1__*,scalar_t__*) ;
 scalar_t__ MIDI_mciReadMTrk (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ MIDI_mciReadWord (TYPE_1__*,int*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int TRACE (char*,scalar_t__,...) ;
 int WARN (char*,...) ;
 scalar_t__ mmioFOURCC (char,char,char,char) ;
 long mmioRead (int ,int ,long) ;
 scalar_t__ mmioSeek (int ,scalar_t__,int ) ;

__attribute__((used)) static DWORD MIDI_mciReadMThd(WINE_MCIMIDI* wmm, DWORD dwOffset)
{
    DWORD toberead;
    FOURCC fourcc;
    WORD nt;

    TRACE("(%p, %08X);\n", wmm, dwOffset);

    if (mmioSeek(wmm->hFile, dwOffset, SEEK_SET) != dwOffset) {
 WARN("Can't seek at %08X begin of 'MThd'\n", dwOffset);
 return MCIERR_INVALID_FILE;
    }
    if (mmioRead(wmm->hFile, (HPSTR)&fourcc,
     (long) sizeof(FOURCC)) != (long) sizeof(FOURCC))
 return MCIERR_INVALID_FILE;

    if (fourcc != mmioFOURCC('M', 'T', 'h', 'd')) {
 WARN("Can't synchronize on 'MThd' !\n");
 return MCIERR_INVALID_FILE;
    }

    if (MIDI_mciReadLong(wmm, &toberead) != 0 || toberead < 3 * sizeof(WORD))
 return MCIERR_INVALID_FILE;

    if (MIDI_mciReadWord(wmm, &wmm->wFormat) != 0 ||
 MIDI_mciReadWord(wmm, &wmm->nTracks) != 0 ||
 MIDI_mciReadWord(wmm, &wmm->nDivision) != 0) {
 return MCIERR_INVALID_FILE;
    }

    TRACE("toberead=0x%08X, wFormat=0x%04X nTracks=0x%04X nDivision=0x%04X\n",
   toberead, wmm->wFormat, wmm->nTracks, wmm->nDivision);




    if (wmm->nDivision > 0x8000) {






 FIXME("Handling SMPTE time in MIDI files has not been tested\n"
       "Please report to comp.emulators.ms-windows.wine with MIDI file !\n");

 switch (HIBYTE(wmm->nDivision)) {
 case 0xE8: wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_24; break;
 case 0xE7: wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_25; break;
 case 0xE3: wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_30DROP; break;
 case 0xE2: wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_30; break;
 default:
     WARN("Unsupported number of frames %d\n", -(char)HIBYTE(wmm->nDivision));
     return MCIERR_INVALID_FILE;
 }
 switch (LOBYTE(wmm->nDivision)) {
 case 4:
 case 8:
 case 10:
 case 80:
 case 100:
 default:
     WARN("Unsupported number of sub-frames %d\n", LOBYTE(wmm->nDivision));
     return MCIERR_INVALID_FILE;
 }
    } else if (wmm->nDivision == 0) {
 WARN("Number of division is 0, can't support that !!\n");
 return MCIERR_INVALID_FILE;
    } else {
 wmm->dwMciTimeFormat = MCI_FORMAT_MILLISECONDS;
    }

    switch (wmm->wFormat) {
    case 0:
 if (wmm->nTracks != 1) {
     WARN("Got type 0 file whose number of track is not 1. Setting it to 1\n");
     wmm->nTracks = 1;
 }
 break;
    case 1:
    case 2:
 break;
    default:
 WARN("Handling MIDI files which format = %d is not (yet) supported\n"
      "Please report with MIDI file !\n", wmm->wFormat);
 return MCIERR_INVALID_FILE;
    }

    if (wmm->nTracks > 0x80) {

 FIXME("Truncating MIDI file with %u tracks\n", wmm->nTracks);
 wmm->nTracks = 0x80;
    }

    if ((wmm->tracks = HeapAlloc(GetProcessHeap(), 0, sizeof(MCI_MIDITRACK) * wmm->nTracks)) == ((void*)0)) {
 return MCIERR_OUT_OF_MEMORY;
    }

    toberead -= 3 * sizeof(WORD);
    if (toberead > 0) {
 TRACE("Size of MThd > 6, skipping %d extra bytes\n", toberead);
 mmioSeek(wmm->hFile, toberead, SEEK_CUR);
    }

    for (nt = 0; nt < wmm->nTracks; nt++) {
 wmm->tracks[nt].wTrackNr = nt;
 if (MIDI_mciReadMTrk(wmm, &wmm->tracks[nt]) != 0) {
     WARN("Can't read 'MTrk' header\n");
     return MCIERR_INVALID_FILE;
 }
    }

    wmm->dwTempo = 500000;

    return 0;
}
