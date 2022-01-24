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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_DATATYPE_MISMATCH ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC5(MSIDATABASE *db, MSIDATABASE *mergedb,
                                      LPCWSTR table)
{
    MSIRECORD *dbrec, *mergerec = NULL;
    UINT r, i, count;

    r = FUNC0(db, table, &dbrec);
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC0(mergedb, table, &mergerec);
    if (r != ERROR_SUCCESS)
        goto done;

    count = FUNC1(dbrec);
    if (count != FUNC1(mergerec))
    {
        r = ERROR_DATATYPE_MISMATCH;
        goto done;
    }

    for (i = 1; i <= count; i++)
    {
        if (FUNC4( FUNC2( dbrec, i ), FUNC2( mergerec, i ) ))
        {
            r = ERROR_DATATYPE_MISMATCH;
            goto done;
        }
    }

done:
    FUNC3(&dbrec->hdr);
    FUNC3(&mergerec->hdr);

    return r;
}