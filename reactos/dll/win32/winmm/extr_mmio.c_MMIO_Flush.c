
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fccIOProc; int dwFlags; scalar_t__ pchBuffer; scalar_t__ pchEndRead; scalar_t__ pchNext; int lBufOffset; scalar_t__ cchBuffer; } ;
struct TYPE_4__ {TYPE_2__ info; int ioProc; } ;
typedef TYPE_1__ WINE_MMIO ;
typedef int UINT ;
typedef int MMRESULT ;
typedef int LPARAM ;


 int FALSE ;
 scalar_t__ FOURCC_MEM ;
 int MMIOM_SEEK ;
 int MMIOM_WRITE ;
 int MMIO_DIRTY ;
 int MMIO_EMPTYBUF ;
 int MMSYSERR_NOERROR ;
 scalar_t__ SEEK_SET ;
 int send_message (int ,TYPE_2__*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static MMRESULT MMIO_Flush(WINE_MMIO* wm, UINT uFlags)
{
    if (wm->info.cchBuffer && (wm->info.fccIOProc != FOURCC_MEM)) {

 if (wm->info.dwFlags & MMIO_DIRTY) {

     send_message(wm->ioProc, &wm->info, MMIOM_SEEK, wm->info.lBufOffset, SEEK_SET, FALSE);
     send_message(wm->ioProc, &wm->info, MMIOM_WRITE,
                         (LPARAM)wm->info.pchBuffer,
                         wm->info.pchNext - wm->info.pchBuffer, FALSE);
 }
 if (uFlags & MMIO_EMPTYBUF)
     wm->info.pchNext = wm->info.pchEndRead = wm->info.pchBuffer;
    }
    wm->info.dwFlags &= ~MMIO_DIRTY;

    return MMSYSERR_NOERROR;
}
