#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  view; TYPE_1__* db; } ;
struct TYPE_4__ {scalar_t__ num_streams; int /*<<< orphan*/  strings; } ;
typedef  TYPE_2__ MSISTREAMSVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,scalar_t__*) ; 

__attribute__((used)) static UINT FUNC3( MSISTREAMSVIEW *sv, MSIRECORD *rec, UINT *row )
{
    const WCHAR *str;
    UINT r, i, id, val;

    str = FUNC0( rec, 1 );
    r = FUNC2( sv->db->strings, str, -1, &id );
    if (r != ERROR_SUCCESS)
        return r;

    for (i = 0; i < sv->db->num_streams; i++)
    {
        FUNC1( &sv->view, i, 1, &val );

        if (val == id)
        {
            if (row) *row = i;
            return ERROR_SUCCESS;
        }
    }

    return ERROR_FUNCTION_FAILED;
}