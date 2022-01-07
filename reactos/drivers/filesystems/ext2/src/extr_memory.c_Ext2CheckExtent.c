
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef int PLARGE_MCB ;
typedef int LONGLONG ;
typedef int BOOLEAN ;


 int DEBUG (int ,char*) ;
 int DL_EXT ;
 int DbgBreak () ;
 int FALSE ;
 int FsRtlGetNextLargeMcbEntry (int ,scalar_t__,int*,int*,int*) ;
 int FsRtlLookupLargeMcbEntry (int ,int,int*,int*,int*,int*,scalar_t__*) ;
 scalar_t__ TRUE ;

VOID
Ext2CheckExtent(
    PLARGE_MCB Zone,
    LONGLONG Vbn,
    LONGLONG Lbn,
    LONGLONG Length,
    BOOLEAN bAdded
)
{
}
