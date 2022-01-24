#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct update_accum {size_t cUpdates; TYPE_1__* updates; } ;
struct TYPE_2__ {struct TYPE_2__* pbData; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(struct update_accum *accum)
{
    DWORD i;

    for (i = 0; i < accum->cUpdates; i++)
        FUNC0(accum->updates[i].pbData);
    FUNC0(accum->updates);
    accum->updates = NULL;
    accum->cUpdates = 0;
}