
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef int LONGLONG ;
typedef int LARGE_MCB ;
typedef int BOOLEAN ;


 int FsRtlInitializeLargeMcb (int *,int ) ;
 int FsRtlLookupLargeMcbEntry (int *,long long,int*,int*,int *,int *,int *) ;
 int FsRtlLookupLastLargeMcbEntryAndIndex (int *,int*,int*,scalar_t__*) ;
 int FsRtlUninitializeLargeMcb (int *) ;
 int PagedPool ;
 int ok_bool_false (int ,char*) ;
 int ok_eq_longlong (int,int) ;
 int ok_eq_ulong (scalar_t__,scalar_t__) ;

__attribute__((used)) static VOID FsRtlLargeMcbTestsFastFat()
{
    LARGE_MCB FirstMcb;
    LONGLONG Lbn, Vbn, SectorCount;
    ULONG Index;
    BOOLEAN Result;

    FsRtlInitializeLargeMcb(&FirstMcb, PagedPool);

    Lbn = -1;
    SectorCount = -1;
    Result = FsRtlLookupLargeMcbEntry(&FirstMcb, 8388607LL, &Lbn, &SectorCount, ((void*)0), ((void*)0), ((void*)0));
    ok_bool_false(Result, "FsRtlLookupLargeMcbEntry returned");
    ok_eq_longlong(Lbn, -1);
    ok_eq_longlong(SectorCount, -1);

    Vbn = -1;
    Lbn = -1;
    Index = (ULONG) -1;
    Result = FsRtlLookupLastLargeMcbEntryAndIndex(&FirstMcb, &Vbn, &Lbn, &Index);
    ok_bool_false(Result, "FsRtlLookupLastLargeMcbEntryAndIndex returned");
    ok_eq_longlong(Vbn, -1);
    ok_eq_longlong(Lbn, -1);
    ok_eq_ulong(Index, (ULONG) -1);

    FsRtlUninitializeLargeMcb(&FirstMcb);
}
