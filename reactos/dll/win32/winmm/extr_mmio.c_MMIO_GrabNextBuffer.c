
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cchBuffer; scalar_t__ pchNext; scalar_t__ pchBuffer; scalar_t__ pchEndRead; scalar_t__ pchEndWrite; int lDiskOffset; int lBufOffset; } ;
struct TYPE_4__ {int bBufferLoaded; TYPE_2__ info; int ioProc; } ;
typedef TYPE_1__* LPWINE_MMIO ;
typedef int LPARAM ;
typedef scalar_t__ LONG ;


 int FALSE ;
 int MMIOM_READ ;
 int MMIOM_SEEK ;
 scalar_t__ SEEK_CUR ;
 int TRACE (char*,int ,int ,scalar_t__) ;
 int TRUE ;
 scalar_t__ send_message (int ,TYPE_2__*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static LONG MMIO_GrabNextBuffer(LPWINE_MMIO wm, int for_read)
{
    LONG size = wm->info.cchBuffer;

    TRACE("bo=%x do=%x of=%lx\n",
   wm->info.lBufOffset, wm->info.lDiskOffset,
   send_message(wm->ioProc, &wm->info, MMIOM_SEEK, 0, SEEK_CUR, FALSE));

    wm->info.lBufOffset = wm->info.lDiskOffset;
    wm->info.pchNext = wm->info.pchBuffer;
    wm->info.pchEndRead = wm->info.pchBuffer;
    wm->info.pchEndWrite = wm->info.pchBuffer + wm->info.cchBuffer;

    wm->bBufferLoaded = TRUE;
    if (for_read) {
 size = send_message(wm->ioProc, &wm->info, MMIOM_READ,
                            (LPARAM)wm->info.pchBuffer, size, FALSE);
 if (size > 0)
     wm->info.pchEndRead += size;
        else
            wm->bBufferLoaded = FALSE;
    }

    return size;
}
