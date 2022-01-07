
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef int PLARGE_MCB ;
typedef int LONGLONG ;


 scalar_t__ FsRtlGetNextLargeMcbEntry (int ,scalar_t__,int *,int *,int *) ;
 int trace (char*,...) ;

__attribute__((used)) static VOID DumpAllRuns(PLARGE_MCB Mcb)
{
    ULONG i;
    LONGLONG Vbn, Lbn, Count;

    trace("MCB %p:\n", Mcb);

    for (i = 0; FsRtlGetNextLargeMcbEntry(Mcb, i, &Vbn, &Lbn, &Count); i++)
    {

        trace("\t[%I64d,%I64d,%I64d]\n", Vbn, Lbn, Count);
    }
    trace("\n");
}
