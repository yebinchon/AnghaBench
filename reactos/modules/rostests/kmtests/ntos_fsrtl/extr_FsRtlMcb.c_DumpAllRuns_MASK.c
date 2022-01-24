#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  PLARGE_MCB ;
typedef  int /*<<< orphan*/  LONGLONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static VOID FUNC2(PLARGE_MCB Mcb)
{
    ULONG i;
    LONGLONG Vbn, Lbn, Count;

    FUNC1("MCB %p:\n", Mcb);

    for (i = 0; FUNC0(Mcb, i, &Vbn, &Lbn, &Count); i++)
    {
        // print out vbn, lbn, and count
        FUNC1("\t[%I64d,%I64d,%I64d]\n", Vbn, Lbn, Count);
    }
    FUNC1("\n");
}