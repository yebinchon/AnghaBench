
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Vcb; int lock; } ;
typedef TYPE_2__ fcb ;
struct TYPE_5__ {int readonly; } ;
typedef int FAST_IO_POSSIBLE ;


 int FastIoIsNotPossible ;
 int FastIoIsPossible ;
 int FastIoIsQuestionable ;
 int FsRtlAreThereCurrentFileLocks (int *) ;
 int FsRtlOplockIsFastIoPossible (int ) ;
 int fcb_oplock (TYPE_2__*) ;

__attribute__((used)) static __inline FAST_IO_POSSIBLE fast_io_possible(fcb* fcb) {
    if (!FsRtlOplockIsFastIoPossible(fcb_oplock(fcb)))
        return FastIoIsNotPossible;

    if (!FsRtlAreThereCurrentFileLocks(&fcb->lock) && !fcb->Vcb->readonly)
        return FastIoIsPossible;

    return FastIoIsQuestionable;
}
