#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
struct TYPE_20__ {struct TYPE_20__* next; } ;
typedef  TYPE_2__ column_info ;
typedef  int UINT ;
struct TYPE_23__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_22__ {TYPE_2__* vals; TYPE_3__* wv; } ;
struct TYPE_21__ {TYPE_1__* ops; } ;
struct TYPE_19__ {int (* execute ) (TYPE_3__*,TYPE_5__*) ;int (* get_dimensions ) (TYPE_3__*,int*,int*) ;int (* set_row ) (TYPE_3__*,int,TYPE_5__*,int) ;} ;
typedef  TYPE_3__ MSIVIEW ;
typedef  TYPE_4__ MSIUPDATEVIEW ;
typedef  TYPE_5__ MSIRECORD ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_SUCCESS ; 
 TYPE_5__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,TYPE_5__*,int) ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_5__* FUNC4 (int,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC7 (TYPE_3__*,int*,int*) ; 
 int FUNC8 (TYPE_3__*,int,TYPE_5__*,int) ; 

__attribute__((used)) static UINT FUNC9( struct tagMSIVIEW *view, MSIRECORD *record )
{
    MSIUPDATEVIEW *uv = (MSIUPDATEVIEW*)view;
    UINT i, r, col_count = 0, row_count = 0;
    MSIRECORD *values = NULL;
    MSIRECORD *where = NULL;
    MSIVIEW *wv;
    UINT cols_count, where_count;
    column_info *col = uv->vals;

    FUNC3("%p %p\n", uv, record );

    /* extract the where markers from the record */
    if (record)
    {
        r = FUNC2(record);

        for (i = 0; col; col = col->next)
            i++;

        cols_count = i;
        where_count = r - i;

        if (where_count > 0)
        {
            where = FUNC0(where_count);

            if (where)
                for (i = 1; i <= where_count; i++)
                    FUNC1(record, cols_count + i, where, i);
        }
    }

    wv = uv->wv;
    if( !wv )
    {
        r = ERROR_FUNCTION_FAILED;
        goto done;
    }

    r = wv->ops->execute( wv, where );
    FUNC3("tv execute returned %x\n", r);
    if( r )
        goto done;

    r = wv->ops->get_dimensions( wv, &row_count, &col_count );
    if( r )
        goto done;

    values = FUNC4( col_count, uv->vals, record );
    if (!values)
    {
        r = ERROR_FUNCTION_FAILED;
        goto done;
    }

    for ( i=0; i<row_count; i++ )
    {
        r = wv->ops->set_row( wv, i, values, (1 << col_count) - 1 );
        if (r != ERROR_SUCCESS)
            break;
    }

done:
    if ( where ) FUNC5( &where->hdr );
    if ( values ) FUNC5( &values->hdr );

    return r;
}