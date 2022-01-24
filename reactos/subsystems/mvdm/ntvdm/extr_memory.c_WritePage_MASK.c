#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {scalar_t__ (* FastWriteHandler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ hVdd; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PMEM_HOOK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline VOID
FUNC3(PMEM_HOOK Hook, ULONG Address, PVOID Buffer, ULONG Size)
{
    if (!Hook
        || Hook->hVdd
        || !Hook->FastWriteHandler
        || Hook->FastWriteHandler(Address, Buffer, Size))
    {
        FUNC0(FUNC1(Address), Buffer, Size);
    }
}