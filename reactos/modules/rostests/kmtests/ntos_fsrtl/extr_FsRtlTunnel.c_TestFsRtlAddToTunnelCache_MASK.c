#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_14__ {struct TYPE_14__* Buffer; } ;
typedef  int /*<<< orphan*/  TUNNEL ;
typedef  int SIZE_T ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BufSize ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  PagedPool ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

void FUNC8(ULONGLONG DirectoryKey, PUNICODE_STRING s_name, PUNICODE_STRING l_name, BOOLEAN KeyByShortName)
{
    SIZE_T eq;
    LONG b;
    PUNICODE_STRING bs_name;
    PUNICODE_STRING bl_name;
    PVOID Bufb;
    PVOID Buf;

    Buf = FUNC1(PagedPool, BufSize);
    FUNC7(Buf != NULL, "Buff in TestFsRtlAddToTunnelCache is NULL after allocated memory\n");
    Bufb = FUNC1(PagedPool, BufSize);
    FUNC7(Bufb != NULL, "Buff in TestFsRtlAddToTunnelCache is NULL after allocated memory\n");

    // Allocate memory for the  bufs_name
    bs_name = FUNC0(s_name);

    // Allocate memory for the l_name and bl_name
    bl_name = FUNC0(l_name);

    FUNC6((void*)Buf, 0, BufSize);
    FUNC6((void*)Bufb, 0, BufSize);

    FUNC3(T, DirectoryKey, s_name, l_name, KeyByShortName, BufSize, Buf);

    eq = FUNC4((const VOID*)Buf, (const VOID*)Bufb,  BufSize);

    FUNC7( eq !=  sizeof(TUNNEL),"FsRtlAddToTunnelCache function did not change anything in the memory at the address Buf.\n"); 

    b = FUNC5(l_name, bl_name, TRUE);
    FUNC7 (b == 0, "long name after call FsRtlAddToTunnelCache != long name befo call FsRtlAddToTunnelCache\n\n");
    b = FUNC5(s_name, bs_name, TRUE);
    FUNC7 (b == 0, "short name after call FsRtlAddToTunnelCache != short name befo call FsRtlAddToTunnelCache\n\n");

    if (bs_name->Buffer) FUNC2(bs_name->Buffer);
    FUNC2(bs_name);
    if (bl_name->Buffer) FUNC2(bl_name->Buffer);
    FUNC2(bl_name);
    FUNC2(Bufb);
    FUNC2(Buf);
}