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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_4__ {int QuadPart; } ;
struct TYPE_5__ {TYPE_1__ cbSize; } ;
typedef  TYPE_2__ STATSTG ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

UINT FUNC11( IStorage *stg, LPCWSTR stname, BOOL table,
                       BYTE **pdata, UINT *psz )
{
    HRESULT r;
    UINT ret = ERROR_FUNCTION_FAILED;
    VOID *data;
    ULONG sz, count;
    IStream *stm = NULL;
    STATSTG stat;
    LPWSTR encname;

    encname = FUNC8(table, stname);

    FUNC5("%s -> %s\n",FUNC7(stname),FUNC7(encname));

    r = FUNC1(stg, encname, NULL, 
            STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm);
    FUNC10( encname );
    if( FUNC0( r ) )
    {
        FUNC6("open stream failed r = %08x - empty table?\n", r);
        return ret;
    }

    r = FUNC4(stm, &stat, STATFLAG_NONAME );
    if( FUNC0( r ) )
    {
        FUNC6("open stream failed r = %08x!\n", r);
        goto end;
    }

    if( stat.cbSize.QuadPart >> 32 )
    {
        FUNC6("Too big!\n");
        goto end;
    }
        
    sz = stat.cbSize.QuadPart;
    data = FUNC9( sz );
    if( !data )
    {
        FUNC6("couldn't allocate memory r=%08x!\n", r);
        ret = ERROR_NOT_ENOUGH_MEMORY;
        goto end;
    }
        
    r = FUNC2(stm, data, sz, &count );
    if( FUNC0( r ) || ( count != sz ) )
    {
        FUNC10( data );
        FUNC6("read stream failed r = %08x!\n", r);
        goto end;
    }

    *pdata = data;
    *psz = sz;
    ret = ERROR_SUCCESS;

end:
    FUNC3( stm );

    return ret;
}