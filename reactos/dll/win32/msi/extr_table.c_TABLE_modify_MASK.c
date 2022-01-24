#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  size_t UINT ;
struct TYPE_6__ {int /*<<< orphan*/  error_column; int /*<<< orphan*/  error; } ;
struct TYPE_8__ {TYPE_2__* columns; TYPE_1__ view; } ;
struct TYPE_7__ {int /*<<< orphan*/  colname; } ;
typedef  TYPE_3__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int MSIMODIFY ;

/* Variables and functions */
 size_t ERROR_CALL_NOT_IMPLEMENTED ; 
 size_t ERROR_INVALID_DATA ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct tagMSIVIEW*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSIDBERROR_DUPLICATEKEY ; 
#define  MSIMODIFY_ASSIGN 139 
#define  MSIMODIFY_DELETE 138 
#define  MSIMODIFY_INSERT 137 
#define  MSIMODIFY_INSERT_TEMPORARY 136 
#define  MSIMODIFY_MERGE 135 
#define  MSIMODIFY_REFRESH 134 
#define  MSIMODIFY_REPLACE 133 
#define  MSIMODIFY_UPDATE 132 
#define  MSIMODIFY_VALIDATE 131 
#define  MSIMODIFY_VALIDATE_DELETE 130 
#define  MSIMODIFY_VALIDATE_FIELD 129 
#define  MSIMODIFY_VALIDATE_NEW 128 
 size_t FUNC1 (struct tagMSIVIEW*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct tagMSIVIEW*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC3 (struct tagMSIVIEW*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct tagMSIVIEW*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (struct tagMSIVIEW*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,size_t*,size_t*) ; 
 size_t FUNC7 (struct tagMSIVIEW*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static UINT FUNC9( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                          MSIRECORD *rec, UINT row)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT r, frow, column;

    FUNC2("%p %d %p\n", view, eModifyMode, rec );

    switch (eModifyMode)
    {
    case MSIMODIFY_DELETE:
        r = FUNC3( view, rec );
        break;
    case MSIMODIFY_VALIDATE_NEW:
        r = FUNC8( tv, rec, &column );
        if (r != ERROR_SUCCESS)
        {
            tv->view.error = MSIDBERROR_DUPLICATEKEY;
            tv->view.error_column = tv->columns[column].colname;
            r = ERROR_INVALID_DATA;
        }
        break;

    case MSIMODIFY_INSERT:
        r = FUNC8( tv, rec, NULL );
        if (r != ERROR_SUCCESS)
            break;
        r = FUNC1( view, rec, -1, FALSE );
        break;

    case MSIMODIFY_INSERT_TEMPORARY:
        r = FUNC8( tv, rec, NULL );
        if (r != ERROR_SUCCESS)
            break;
        r = FUNC1( view, rec, -1, TRUE );
        break;

    case MSIMODIFY_REFRESH:
        r = FUNC4( view, rec, row );
        break;

    case MSIMODIFY_UPDATE:
        r = FUNC7( view, rec, row );
        break;

    case MSIMODIFY_ASSIGN:
        r = FUNC5( view, rec );
        break;

    case MSIMODIFY_MERGE:
        /* check row that matches this record */
        r = FUNC6( tv, rec, &frow, &column );
        if (r != ERROR_SUCCESS)
        {
            r = FUNC8( tv, rec, NULL );
            if (r == ERROR_SUCCESS)
                r = FUNC1( view, rec, -1, FALSE );
        }
        break;

    case MSIMODIFY_REPLACE:
    case MSIMODIFY_VALIDATE:
    case MSIMODIFY_VALIDATE_FIELD:
    case MSIMODIFY_VALIDATE_DELETE:
        FUNC0("%p %d %p - mode not implemented\n", view, eModifyMode, rec );
        r = ERROR_CALL_NOT_IMPLEMENTED;
        break;

    default:
        r = ERROR_INVALID_DATA;
    }

    return r;
}