#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  MaxCount; } ;
typedef  TYPE_1__* PMIDL_STUB_MESSAGE ;
typedef  int /*<<< orphan*/  PFORMAT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline PFORMAT_STRING FUNC1(PMIDL_STUB_MESSAGE pStubMsg, unsigned char *pMemory, PFORMAT_STRING pFormat, ULONG def)
{
    return FUNC0(pStubMsg, pMemory, pFormat, def, &pStubMsg->MaxCount);
}