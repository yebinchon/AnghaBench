
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONGLONG ;
struct TYPE_14__ {struct TYPE_14__* Buffer; } ;
typedef int TUNNEL ;
typedef int SIZE_T ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef scalar_t__ LONG ;
typedef int BOOLEAN ;


 int BufSize ;
 TYPE_1__* CopyUS (TYPE_1__*) ;
 TYPE_1__* ExAllocatePool (int ,int ) ;
 int ExFreePool (TYPE_1__*) ;
 int FsRtlAddToTunnelCache (int ,int ,TYPE_1__*,TYPE_1__*,int ,int ,TYPE_1__*) ;
 int PagedPool ;
 int RtlCompareMemory (int const*,int const*,int ) ;
 scalar_t__ RtlCompareUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 int T ;
 int TRUE ;
 int memset (void*,int ,int ) ;
 int ok (int,char*) ;

void TestFsRtlAddToTunnelCache(ULONGLONG DirectoryKey, PUNICODE_STRING s_name, PUNICODE_STRING l_name, BOOLEAN KeyByShortName)
{
    SIZE_T eq;
    LONG b;
    PUNICODE_STRING bs_name;
    PUNICODE_STRING bl_name;
    PVOID Bufb;
    PVOID Buf;

    Buf = ExAllocatePool(PagedPool, BufSize);
    ok(Buf != ((void*)0), "Buff in TestFsRtlAddToTunnelCache is NULL after allocated memory\n");
    Bufb = ExAllocatePool(PagedPool, BufSize);
    ok(Bufb != ((void*)0), "Buff in TestFsRtlAddToTunnelCache is NULL after allocated memory\n");


    bs_name = CopyUS(s_name);


    bl_name = CopyUS(l_name);

    memset((void*)Buf, 0, BufSize);
    memset((void*)Bufb, 0, BufSize);

    FsRtlAddToTunnelCache(T, DirectoryKey, s_name, l_name, KeyByShortName, BufSize, Buf);

    eq = RtlCompareMemory((const VOID*)Buf, (const VOID*)Bufb, BufSize);

    ok( eq != sizeof(TUNNEL),"FsRtlAddToTunnelCache function did not change anything in the memory at the address Buf.\n");

    b = RtlCompareUnicodeString(l_name, bl_name, TRUE);
    ok (b == 0, "long name after call FsRtlAddToTunnelCache != long name befo call FsRtlAddToTunnelCache\n\n");
    b = RtlCompareUnicodeString(s_name, bs_name, TRUE);
    ok (b == 0, "short name after call FsRtlAddToTunnelCache != short name befo call FsRtlAddToTunnelCache\n\n");

    if (bs_name->Buffer) ExFreePool(bs_name->Buffer);
    ExFreePool(bs_name);
    if (bl_name->Buffer) ExFreePool(bl_name->Buffer);
    ExFreePool(bl_name);
    ExFreePool(Bufb);
    ExFreePool(Buf);
}
