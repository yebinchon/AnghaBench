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
typedef  scalar_t__ ULONG ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

UINT FUNC10( IStorage *stg, LPCWSTR stname,
                        LPCVOID data, UINT sz, BOOL bTable )
{
    HRESULT r;
    UINT ret = ERROR_FUNCTION_FAILED;
    ULONG count;
    IStream *stm = NULL;
    ULARGE_INTEGER size;
    LARGE_INTEGER pos;
    LPWSTR encname;

    encname = FUNC8(bTable, stname );
    r = FUNC2( stg, encname, NULL, 
            STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, &stm);
    if( FUNC0(r) )
    {
        r = FUNC1( stg, encname,
                STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    }
    FUNC9( encname );
    if( FUNC0( r ) )
    {
        FUNC7("open stream failed r = %08x\n", r);
        return ret;
    }

    size.QuadPart = sz;
    r = FUNC5( stm, size );
    if( FUNC0( r ) )
    {
        FUNC7("Failed to SetSize\n");
        goto end;
    }

    pos.QuadPart = 0;
    r = FUNC4( stm, pos, STREAM_SEEK_SET, NULL );
    if( FUNC0( r ) )
    {
        FUNC7("Failed to Seek\n");
        goto end;
    }

    if (sz)
    {
        r = FUNC6(stm, data, sz, &count );
        if( FUNC0( r ) || ( count != sz ) )
        {
            FUNC7("Failed to Write\n");
            goto end;
        }
    }

    ret = ERROR_SUCCESS;

end:
    FUNC3( stm );

    return ret;
}