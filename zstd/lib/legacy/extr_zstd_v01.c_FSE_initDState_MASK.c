#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  const* table; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  tableLog; } ;
typedef  TYPE_1__ FSE_DTableHeader ;
typedef  int /*<<< orphan*/  FSE_DTable ;
typedef  int /*<<< orphan*/  FSE_DStream_t ;
typedef  TYPE_2__ FSE_DState_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(FSE_DState_t* DStatePtr, FSE_DStream_t* bitD, const FSE_DTable* dt)
{
    const void* ptr = dt;
    const FSE_DTableHeader* const DTableH = (const FSE_DTableHeader*)ptr;
    DStatePtr->state = FUNC0(bitD, DTableH->tableLog);
    FUNC1(bitD);
    DStatePtr->table = dt + 1;
}