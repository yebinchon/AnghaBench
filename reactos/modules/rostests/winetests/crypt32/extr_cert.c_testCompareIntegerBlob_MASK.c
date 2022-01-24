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
struct TYPE_3__ {scalar_t__ areEqual; int /*<<< orphan*/  blob2; int /*<<< orphan*/  blob1; } ;
typedef  size_t DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* intBlobs ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    DWORD i;
    BOOL ret;

    for (i = 0; i < FUNC0(intBlobs); i++)
    {
        ret = FUNC1(&intBlobs[i].blob1, &intBlobs[i].blob2);
        FUNC2(ret == intBlobs[i].areEqual,
         "%d: expected blobs %s compare\n", i, intBlobs[i].areEqual ?
         "to" : "not to");
    }
}