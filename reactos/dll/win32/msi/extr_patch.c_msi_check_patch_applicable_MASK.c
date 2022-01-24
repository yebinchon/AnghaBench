#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  MSISUMMARYINFO ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ **** LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  PID_TEMPLATE ; 
 int /*<<< orphan*/ ****** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/ ******* FUNC3 (int /*<<< orphan*/ ****,char) ; 
 int /*<<< orphan*/ ****** FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ****,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/  szProductCode ; 

UINT FUNC6( MSIPACKAGE *package, MSISUMMARYINFO *si )
{
    LPWSTR guid_list, *guids, product_code;
    UINT i, ret = ERROR_FUNCTION_FAILED;

    product_code = FUNC1( package->db, szProductCode );
    if (!product_code)
    {
        /* FIXME: the property ProductCode should be written into the DB somewhere */
        FUNC0("no product code to check\n");
        return ERROR_SUCCESS;
    }
    guid_list = FUNC4( si, PID_TEMPLATE );
    guids = FUNC3( guid_list, ';' );
    for (i = 0; guids[i] && ret != ERROR_SUCCESS; i++)
    {
        if (!FUNC5( guids[i], product_code )) ret = ERROR_SUCCESS;
    }
    FUNC2( *guids );
    FUNC2( guid_list );
    FUNC2( product_code );
    return ret;
}