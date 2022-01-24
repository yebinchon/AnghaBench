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
struct TYPE_5__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  storage; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szSumInfo ; 

UINT FUNC7( IStorage *stg, UINT uiUpdateCount, MSISUMMARYINFO **ret )
{
    IStream *stm;
    MSISUMMARYINFO *si;
    HRESULT hr;
    UINT r;

    FUNC3("%p, %u\n", stg, uiUpdateCount);

    if (!(si = FUNC4( stg, uiUpdateCount ))) return ERROR_OUTOFMEMORY;

    hr = FUNC1( si->storage, szSumInfo, 0, STGM_READ|STGM_SHARE_EXCLUSIVE, 0, &stm );
    if (FUNC0( hr ))
    {
        FUNC6( &si->hdr );
        return ERROR_FUNCTION_FAILED;
    }

    r = FUNC5( si, stm );
    FUNC2( stm );
    if (r != ERROR_SUCCESS)
    {
        FUNC6( &si->hdr );
        return r;
    }

    *ret = si;
    return ERROR_SUCCESS;
}