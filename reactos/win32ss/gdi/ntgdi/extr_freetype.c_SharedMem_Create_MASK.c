#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {int RefCount; int /*<<< orphan*/  IsMapping; int /*<<< orphan*/  BufferSize; int /*<<< orphan*/  Buffer; } ;
typedef  int /*<<< orphan*/  SHARED_MEM ;
typedef  TYPE_1__* PSHARED_MEM ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  TAG_FONT ; 

__attribute__((used)) static PSHARED_MEM
FUNC2(PBYTE Buffer, ULONG BufferSize, BOOL IsMapping)
{
    PSHARED_MEM Ptr;
    Ptr = FUNC1(PagedPool, sizeof(SHARED_MEM), TAG_FONT);
    if (Ptr)
    {
        Ptr->Buffer = Buffer;
        Ptr->BufferSize = BufferSize;
        Ptr->RefCount = 1;
        Ptr->IsMapping = IsMapping;
        FUNC0("Creating SharedMem for %p (%i, %p)\n", Buffer, IsMapping, Ptr);
    }
    return Ptr;
}