#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_11__ {int /*<<< orphan*/  strings; } ;
struct TYPE_10__ {int num_cols; int /*<<< orphan*/  view; TYPE_6__* db; TYPE_2__* columns; TYPE_1__* table; } ;
struct TYPE_9__ {int type; } ;
struct TYPE_8__ {scalar_t__ persistent; scalar_t__* data_persistent; } ;
typedef  TYPE_3__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MSICONDITION_FALSE ; 
 scalar_t__ FUNC1 (int) ; 
 int MSITYPE_STRING ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  StringNonPersistent ; 
 int /*<<< orphan*/  StringPersistent ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC5 (TYPE_3__*,int,int,int) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static UINT FUNC12( struct tagMSIVIEW *view, UINT row, MSIRECORD *rec, UINT mask )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT i, val, r = ERROR_SUCCESS;

    if ( !tv->table )
        return ERROR_INVALID_PARAMETER;

    /* test if any of the mask bits are invalid */
    if ( mask >= (1<<tv->num_cols) )
        return ERROR_INVALID_PARAMETER;

    for ( i = 0; i < tv->num_cols; i++ )
    {
        BOOL persistent;

        /* only update the fields specified in the mask */
        if ( !(mask&(1<<i)) )
            continue;

        persistent = (tv->table->persistent != MSICONDITION_FALSE) &&
                     (tv->table->data_persistent[row]);
        /* FIXME: should we allow updating keys? */

        val = 0;
        if ( !FUNC3( rec, i + 1 ) )
        {
            r = FUNC8 (tv, rec, i + 1, &val);
            if ( FUNC1(tv->columns[ i ].type) )
            {
                IStream *stm;
                LPWSTR stname;

                if ( r != ERROR_SUCCESS )
                    return ERROR_FUNCTION_FAILED;

                r = FUNC2( rec, i + 1, &stm );
                if ( r != ERROR_SUCCESS )
                    return r;

                r = FUNC7( tv, row, &stname );
                if ( r != ERROR_SUCCESS )
                {
                    FUNC0( stm );
                    return r;
                }

                r = FUNC6( tv->db, stname, stm );
                FUNC0( stm );
                FUNC10 ( stname );

                if ( r != ERROR_SUCCESS )
                    return r;
            }
            else if ( tv->columns[i].type & MSITYPE_STRING )
            {
                UINT x;

                if ( r != ERROR_SUCCESS )
                {
                    int len;
                    const WCHAR *sval = FUNC11( rec, i + 1, &len );
                    val = FUNC9( tv->db->strings, sval, len,
                                          persistent ? StringPersistent : StringNonPersistent );
                }
                else
                {
                    FUNC4(&tv->view, row, i + 1, &x);
                    if (val == x)
                        continue;
                }
            }
            else
            {
                if ( r != ERROR_SUCCESS )
                    return ERROR_FUNCTION_FAILED;
            }
        }

        r = FUNC5( tv, row, i+1, val );
        if ( r != ERROR_SUCCESS )
            break;
    }
    return r;
}