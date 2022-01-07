
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TUNNEL ;
typedef int SIZE_T ;


 void* ExAllocatePool (int ,int) ;
 int FsRtlInitializeTunnelCache (int *) ;
 int PagedPool ;
 int RtlCompareMemory (int const*,int const*,int) ;
 int * T ;
 int * Tb ;
 int memset (void*,int ,int) ;
 int ok (int,char*) ;

void TestFsRtlInitializeTunnelCache()
{
    SIZE_T eq;
    T = ExAllocatePool(PagedPool, sizeof(TUNNEL));
    ok(T != ((void*)0), "PTUNEL is NULL after allocated memory\n");
    Tb = ExAllocatePool(PagedPool, sizeof(TUNNEL));
    ok(Tb != ((void*)0), "PTUNEL is NULL after allocated memory\n");

    memset((void*)T, 0, sizeof(TUNNEL));
    memset((void*)Tb, 0, sizeof(TUNNEL));

    FsRtlInitializeTunnelCache(T);

    eq = RtlCompareMemory((const VOID*)T, (const VOID*)Tb, sizeof(TUNNEL));

    ok ( eq != sizeof(TUNNEL), "FsRtlInitializeTunnelCache function did not change anything in the memory at the address PTUNEL.\n");
}
