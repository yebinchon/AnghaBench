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
typedef  int /*<<< orphan*/  MSIQUERY ;

/* Variables and functions */
 scalar_t__ ERROR_DATATYPE_MISMATCH ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICOLINFO_NAMES ; 
 int /*<<< orphan*/  MSICOLINFO_TYPES ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC6(MSIQUERY *dbview, MSIQUERY *mergeview)
{
    MSIRECORD *dbrec, *mergerec;
    UINT r, i, count;

    r = FUNC2(dbview, MSICOLINFO_NAMES, &dbrec);
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC2(mergeview, MSICOLINFO_NAMES, &mergerec);
    if (r != ERROR_SUCCESS)
    {
        FUNC4(&dbrec->hdr);
        return r;
    }

    count = FUNC0(dbrec);
    for (i = 1; i <= count; i++)
    {
        if (!FUNC1(mergerec, i))
            break;

        if (FUNC5( FUNC1( dbrec, i ), FUNC1( mergerec, i ) ))
        {
            r = ERROR_DATATYPE_MISMATCH;
            goto done;
        }
    }

    FUNC4(&dbrec->hdr);
    FUNC4(&mergerec->hdr);
    dbrec = mergerec = NULL;

    r = FUNC2(dbview, MSICOLINFO_TYPES, &dbrec);
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC2(mergeview, MSICOLINFO_TYPES, &mergerec);
    if (r != ERROR_SUCCESS)
    {
        FUNC4(&dbrec->hdr);
        return r;
    }

    count = FUNC0(dbrec);
    for (i = 1; i <= count; i++)
    {
        if (!FUNC1(mergerec, i))
            break;

        if (!FUNC3(FUNC1(dbrec, i),
                     FUNC1(mergerec, i)))
        {
            r = ERROR_DATATYPE_MISMATCH;
            break;
        }
    }

done:
    FUNC4(&dbrec->hdr);
    FUNC4(&mergerec->hdr);

    return r;
}