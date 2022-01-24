#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  storage; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  IStream ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szSumInfo ; 

UINT FUNC5( MSIDATABASE *db, UINT uiUpdateCount, MSISUMMARYINFO **ret )
{
    IStream *stm;
    MSISUMMARYINFO *si;
    UINT r;

    if (!(si = FUNC1( db->storage, uiUpdateCount ))) return ERROR_OUTOFMEMORY;

    r = FUNC3( db, szSumInfo, &stm );
    if (r != ERROR_SUCCESS)
    {
        FUNC4( &si->hdr );
        return r;
    }

    r = FUNC2( si, stm );
    FUNC0( stm );
    if (r != ERROR_SUCCESS)
    {
        FUNC4( &si->hdr );
        return r;
    }

    *ret = si;
    return ERROR_SUCCESS;
}