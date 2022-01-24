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
typedef  size_t UINT ;
struct TYPE_6__ {size_t num_cols; int /*<<< orphan*/  view; TYPE_1__* columns; } ;
struct TYPE_5__ {int type; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 size_t ERROR_SUCCESS ; 
 int MSITYPE_KEY ; 
 size_t FUNC0 (int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 size_t FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,size_t,size_t*) ; 

__attribute__((used)) static int FUNC3( MSITABLEVIEW *tv, UINT row, MSIRECORD *rec )
{
    UINT r, i, ivalue, x;

    for (i = 0; i < tv->num_cols; i++ )
    {
        if (!(tv->columns[i].type & MSITYPE_KEY)) continue;

        r = FUNC2( tv, rec, i + 1, &ivalue );
        if (r != ERROR_SUCCESS)
            return 1;

        r = FUNC0( &tv->view, row, i + 1, &x );
        if (r != ERROR_SUCCESS)
        {
            FUNC1("TABLE_fetch_int should not fail here %u\n", r);
            return -1;
        }
        if (ivalue > x)
        {
            return 1;
        }
        else if (ivalue == x)
        {
            if (i < tv->num_cols - 1) continue;
            return 0;
        }
        else
            return -1;
    }
    return 1;
}