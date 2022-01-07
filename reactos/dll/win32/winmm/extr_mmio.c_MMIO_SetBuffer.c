
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwFlags; int cchBuffer; int lDiskOffset; int lBufOffset; int * pchBuffer; int * pchEndWrite; int * pchEndRead; int * pchNext; } ;
struct TYPE_7__ {int bBufferLoaded; TYPE_1__ info; } ;
typedef TYPE_2__ WINE_MMIO ;
typedef int UINT ;
typedef scalar_t__ MMRESULT ;
typedef int LONG ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ MMIOERR_CANNOTWRITE ;
 scalar_t__ MMIOERR_OUTOFMEMORY ;
 int MMIO_ALLOCBUF ;
 scalar_t__ MMIO_Flush (TYPE_2__*,int ) ;
 scalar_t__ MMSYSERR_NOERROR ;
 int TRACE (char*,TYPE_2__*,void*,int,int ) ;
 int WARN (char*,int) ;

__attribute__((used)) static MMRESULT MMIO_SetBuffer(WINE_MMIO* wm, void* pchBuffer, LONG cchBuffer,
          UINT uFlags)
{
    TRACE("(%p %p %d %u)\n", wm, pchBuffer, cchBuffer, uFlags);

    if (cchBuffer > 0xFFFF)
 WARN("Untested handling of huge mmio buffers (%d >= 64k)\n", cchBuffer);

    if (MMIO_Flush(wm, 0) != MMSYSERR_NOERROR)
 return MMIOERR_CANNOTWRITE;


    if (wm->info.dwFlags & MMIO_ALLOCBUF) {
        HeapFree(GetProcessHeap(), 0, wm->info.pchBuffer);
        wm->info.pchBuffer = ((void*)0);
 wm->info.dwFlags &= ~MMIO_ALLOCBUF;
    }

    if (pchBuffer) {
        wm->info.pchBuffer = pchBuffer;
    } else if (cchBuffer) {
 if (!(wm->info.pchBuffer = HeapAlloc(GetProcessHeap(), 0, cchBuffer)))
     return MMIOERR_OUTOFMEMORY;
 wm->info.dwFlags |= MMIO_ALLOCBUF;
    } else {
 wm->info.pchBuffer = ((void*)0);
    }

    wm->info.cchBuffer = cchBuffer;
    wm->info.pchNext = wm->info.pchBuffer;
    wm->info.pchEndRead = wm->info.pchBuffer;
    wm->info.pchEndWrite = wm->info.pchBuffer + cchBuffer;
    wm->info.lBufOffset = wm->info.lDiskOffset;
    wm->bBufferLoaded = FALSE;

    return MMSYSERR_NOERROR;
}
