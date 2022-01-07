
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PVOID ;
typedef int PUNICODE_STRING ;
typedef int BOOLEAN ;


 int BufSize ;
 int * ExAllocatePool (int ,int) ;
 int FsRtlFindInTunnelCache (int ,int,int ,int ,int ,int*,int *) ;
 int PagedPool ;
 int T ;
 int ok (int ,char*) ;

BOOLEAN TestFsRtlFindInTunnelCache(ULONG DirectoryKey, PUNICODE_STRING name, PUNICODE_STRING s_name, PUNICODE_STRING l_name)
{

    ULONG BufsizeTemp = BufSize;
    PVOID Buf = ExAllocatePool(PagedPool, BufSize*2);
    ok(Buf != ((void*)0), "Buff in FsRtlFindInTunnelCache is NULL after allocated memory\n");

    return FsRtlFindInTunnelCache(T, DirectoryKey, name, s_name, l_name, &BufsizeTemp, Buf);
}
