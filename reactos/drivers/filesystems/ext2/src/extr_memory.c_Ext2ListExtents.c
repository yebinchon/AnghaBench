
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLARGE_MCB ;
typedef scalar_t__ LONGLONG ;
typedef int BOOLEAN ;


 int DEBUG (int ,char*) ;
 int DL_EXT ;
 int FALSE ;
 scalar_t__ FsRtlGetNextLargeMcbEntry (int ,int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ FsRtlNumberOfRunsInLargeMcb (int ) ;
 int TRUE ;

BOOLEAN
Ext2ListExtents(PLARGE_MCB Extents)
{
    if (FsRtlNumberOfRunsInLargeMcb(Extents) != 0) {

        LONGLONG DirtyVba;
        LONGLONG DirtyLba;
        LONGLONG DirtyLength;
        int i, n = 0;

        for (i = 0; FsRtlGetNextLargeMcbEntry(
                    Extents, i, &DirtyVba,
                    &DirtyLba, &DirtyLength); i++) {
            if (DirtyVba > 0 && DirtyLba != -1) {
                DEBUG(DL_EXT, ("Vba:%I64xh Lba:%I64xh Len:%I64xh.\n", DirtyVba, DirtyLba, DirtyLength));
                n++;
            }
        }

        return n ? TRUE : FALSE;
    }

    return FALSE;
}
