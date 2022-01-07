
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct MMIOPos {int dwSize; int dwOffset; } ;
struct AviListBuild {int numVideoFrames; int inVideoSize; int numAudioBlocks; int numAudioAllocated; int inAudioSize; } ;
struct TYPE_9__ {int fccHandler; } ;
struct TYPE_11__ {int video_stream_n; int dwPlayableVideoFrames; int audio_stream_n; struct MMIOPos* lpAudioIndex; int lpWaveFormat; TYPE_3__* lpVideoIndex; TYPE_2__ ash_video; TYPE_1__* inbih; } ;
typedef TYPE_4__ WINE_MCIAVI ;
struct TYPE_12__ {scalar_t__ ckid; int cksize; int dwDataOffset; } ;
struct TYPE_10__ {int dwSize; int dwOffset; } ;
struct TYPE_8__ {scalar_t__ biCompression; } ;
typedef int LPSTR ;
typedef TYPE_5__* LPMMCKINFO ;
typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct MMIOPos* HeapAlloc (int ,int ,int) ;
 struct MMIOPos* HeapReAlloc (int ,int ,struct MMIOPos*,int) ;
 int LOWORD (int ) ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int TWOCCFromFOURCC (scalar_t__) ;
 int WARN (char*,...) ;
 scalar_t__ ckidAVIPADDING ;




 int isxdigit (char const) ;
 char tolower (char const) ;

__attribute__((used)) static BOOL MCIAVI_AddFrame(WINE_MCIAVI* wma, LPMMCKINFO mmck,
    struct AviListBuild* alb)
{
    const BYTE *p;
    DWORD stream_n;
    DWORD twocc;

    if (mmck->ckid == ckidAVIPADDING) return TRUE;

    p = (const BYTE *)&mmck->ckid;

    if (!isxdigit(p[0]) || !isxdigit(p[1]))
    {
        WARN("wrongly encoded stream #\n");
        return FALSE;
    }

    stream_n = (p[0] <= '9') ? (p[0] - '0') : (tolower(p[0]) - 'a' + 10);
    stream_n <<= 4;
    stream_n |= (p[1] <= '9') ? (p[1] - '0') : (tolower(p[1]) - 'a' + 10);

    TRACE("ckid %4.4s (stream #%d)\n", (LPSTR)&mmck->ckid, stream_n);
    twocc = TWOCCFromFOURCC(mmck->ckid);
    if (twocc == TWOCCFromFOURCC(wma->inbih->biCompression))
        twocc = 130;


    else if (twocc == LOWORD(wma->ash_video.fccHandler))
        twocc = 130;
    switch (twocc) {
    case 131:
    case 130:
    case 129:
        if (stream_n != wma->video_stream_n)
        {
            TRACE("data belongs to another video stream #%d\n", stream_n);
            return FALSE;
        }

 TRACE("Adding video frame[%d]: %d bytes\n",
       alb->numVideoFrames, mmck->cksize);

 if (alb->numVideoFrames < wma->dwPlayableVideoFrames) {
     wma->lpVideoIndex[alb->numVideoFrames].dwOffset = mmck->dwDataOffset;
     wma->lpVideoIndex[alb->numVideoFrames].dwSize = mmck->cksize;
     if (alb->inVideoSize < mmck->cksize)
  alb->inVideoSize = mmck->cksize;
     alb->numVideoFrames++;
 } else {
     WARN("Too many video frames\n");
 }
 break;
    case 128:
        if (stream_n != wma->audio_stream_n)
        {
            TRACE("data belongs to another audio stream #%d\n", stream_n);
            return FALSE;
        }

 TRACE("Adding audio frame[%d]: %d bytes\n",
       alb->numAudioBlocks, mmck->cksize);
 if (wma->lpWaveFormat) {
     if (alb->numAudioBlocks >= alb->numAudioAllocated) {
                DWORD newsize = alb->numAudioAllocated + 32;
                struct MMIOPos* newindex;

                if (!wma->lpAudioIndex)
                    newindex = HeapAlloc(GetProcessHeap(), 0, newsize * sizeof(struct MMIOPos));
                else
                    newindex = HeapReAlloc(GetProcessHeap(), 0, wma->lpAudioIndex, newsize * sizeof(struct MMIOPos));
                if (!newindex) return FALSE;
                alb->numAudioAllocated = newsize;
                wma->lpAudioIndex = newindex;
     }
     wma->lpAudioIndex[alb->numAudioBlocks].dwOffset = mmck->dwDataOffset;
     wma->lpAudioIndex[alb->numAudioBlocks].dwSize = mmck->cksize;
     if (alb->inAudioSize < mmck->cksize)
  alb->inAudioSize = mmck->cksize;
     alb->numAudioBlocks++;
 } else {
     WARN("Wave chunk without wave format... discarding\n");
 }
 break;
    default:
        WARN("Unknown frame type %4.4s\n", (LPSTR)&mmck->ckid);
 break;
    }
    return TRUE;
}
