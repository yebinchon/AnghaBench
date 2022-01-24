#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {int /*<<< orphan*/ * Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_1__* PUNICODE_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

PUNICODE_STRING FUNC4(PUNICODE_STRING a)
{
    PUNICODE_STRING b = (PUNICODE_STRING)FUNC0(PagedPool,sizeof(UNICODE_STRING));
    FUNC3(b != NULL, "US is NULL after allocated memory\n");
    b->Length = 0;
    b->MaximumLength =a->MaximumLength;
    if (b->MaximumLength)
    {
        b->Buffer = (PWSTR)FUNC1(PagedPool, b->MaximumLength, 1633);
        FUNC3(b->Buffer != NULL, "US->Buffer is NULL after allocated memory\n");
        FUNC2(b, a);
    }
    else
    {
        b->Buffer = NULL;
    }
    return b;
}