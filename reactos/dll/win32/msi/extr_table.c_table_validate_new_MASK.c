#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_6__ {size_t num_cols; TYPE_1__* columns; } ;
struct TYPE_5__ {int type; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_INVALID_DATA ; 
 size_t ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int MSITYPE_NULLABLE ; 
 int MSITYPE_STRING ; 
 size_t MSI_NULL_INTEGER ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,int*) ; 
 size_t FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,size_t*,size_t*) ; 

__attribute__((used)) static UINT FUNC5( MSITABLEVIEW *tv, MSIRECORD *rec, UINT *column )
{
    UINT r, row, i;

    /* check there are no null values where they're not allowed */
    for( i = 0; i < tv->num_cols; i++ )
    {
        if ( tv->columns[i].type & MSITYPE_NULLABLE )
            continue;

        if ( FUNC0(tv->columns[i].type) )
            FUNC2("skipping binary column\n");
        else if ( tv->columns[i].type & MSITYPE_STRING )
        {
            int len;
            const WCHAR *str = FUNC3( rec, i+1, &len );

            if (!str || (!str[0] && !len))
            {
                if (column) *column = i;
                return ERROR_INVALID_DATA;
            }
        }
        else
        {
            UINT n;

            n = FUNC1( rec, i+1 );
            if (n == MSI_NULL_INTEGER)
            {
                if (column) *column = i;
                return ERROR_INVALID_DATA;
            }
        }
    }

    /* check there are no duplicate keys */
    r = FUNC4( tv, rec, &row, column );
    if (r == ERROR_SUCCESS)
        return ERROR_FUNCTION_FAILED;

    return ERROR_SUCCESS;
}