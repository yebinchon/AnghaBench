#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct tagMSIVIEW*,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC5( struct tagMSIVIEW *view, MSIRECORD *rec, UINT row )
{
    MSIRECORD *curr;
    UINT r, i, count;

    r = FUNC3(view, row - 1, &curr);
    if (r != ERROR_SUCCESS)
        return r;

    /* Close the original record */
    FUNC0(&rec->hdr);

    count = FUNC2(rec);
    for (i = 0; i < count; i++)
        FUNC1(curr, i + 1, rec, i + 1);

    FUNC4(&curr->hdr);
    return ERROR_SUCCESS;
}