#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * sval; int /*<<< orphan*/  column; } ;
struct expr {int type; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  rec_index; TYPE_1__* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  strings; } ;
typedef  TYPE_3__ MSIWHEREVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
#define  EXPR_COL_NUMBER_STRING 130 
#define  EXPR_SVAL 129 
#define  EXPR_WILDCARD 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC4( MSIWHEREVIEW *wv, const UINT rows[],
                                     const struct expr *expr,
                                     const MSIRECORD *record,
                                     const WCHAR **str )
{
    UINT val = 0, r = ERROR_SUCCESS;

    switch( expr->type )
    {
    case EXPR_COL_NUMBER_STRING:
        r = FUNC2(&expr->u.column, rows, &val);
        if (r == ERROR_SUCCESS)
            *str =  FUNC3(wv->db->strings, val, NULL);
        else
            *str = NULL;
        break;

    case EXPR_SVAL:
        *str = expr->u.sval;
        break;

    case EXPR_WILDCARD:
        *str = FUNC1(record, ++wv->rec_index);
        break;

    default:
        FUNC0("Invalid expression type\n");
        r = ERROR_FUNCTION_FAILED;
        *str = NULL;
        break;
    }
    return r;
}