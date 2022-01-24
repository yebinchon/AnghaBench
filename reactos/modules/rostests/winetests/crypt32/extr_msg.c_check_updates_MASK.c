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
struct update_accum {scalar_t__ cUpdates; TYPE_1__* updates; } ;
struct TYPE_2__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,size_t,...) ; 

__attribute__((used)) static void FUNC3(LPCSTR header, const struct update_accum *expected,
 const struct update_accum *got)
{
    DWORD i;

    FUNC2(expected->cUpdates == got->cUpdates,
     "%s: expected %d updates, got %d\n", header, expected->cUpdates,
     got->cUpdates);
    if (expected->cUpdates == got->cUpdates)
        for (i = 0; i < FUNC1(expected->cUpdates, got->cUpdates); i++)
        {
            FUNC2(expected->updates[i].cbData == got->updates[i].cbData,
             "%s, update %d: expected %d bytes, got %d\n", header, i,
             expected->updates[i].cbData, got->updates[i].cbData);
            if (expected->updates[i].cbData && expected->updates[i].cbData ==
             got->updates[i].cbData)
                FUNC2(!FUNC0(expected->updates[i].pbData, got->updates[i].pbData,
                 got->updates[i].cbData), "%s, update %d: unexpected value\n",
                 header, i);
        }
}