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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICOLINFO_NAMES ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC6(MSIQUERY *query, LPWSTR **columns, DWORD *numcolumns)
{
    UINT r, i, count;
    MSIRECORD *prec = NULL;

    r = FUNC2(query, MSICOLINFO_NAMES, &prec);
    if (r != ERROR_SUCCESS)
        return r;

    count = FUNC0(prec);
    *columns = FUNC3(count*sizeof(LPWSTR));
    if (!*columns)
    {
        r = ERROR_OUTOFMEMORY;
        goto end;
    }

    for (i=1; i<=count; i++ )
    {
        (*columns)[i-1] = FUNC5(FUNC1(prec, i));
    }

    *numcolumns = count;

end:
    FUNC4( &prec->hdr );
    return r;
}