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
typedef  size_t UINT ;
struct TYPE_5__ {size_t num_streams; TYPE_1__* streams; int /*<<< orphan*/  storage; int /*<<< orphan*/  strings; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  str_index; } ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_OUTOFMEMORY ; 
 size_t ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ STG_E_FILEALREADYEXISTS ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UINT FUNC12( MSIDATABASE *db )
{
    UINT i;
    const WCHAR *name;
    WCHAR *encname;
    IStream *stream;
    HRESULT hr;

    FUNC6("got %u streams\n", db->num_streams);

    for (i = 0; i < db->num_streams; i++)
    {
        name = FUNC10( db->strings, db->streams[i].str_index, NULL );
        if (!(encname = FUNC8( FALSE, name ))) return ERROR_OUTOFMEMORY;

        hr = FUNC2( db->storage, encname, STGM_WRITE|STGM_SHARE_EXCLUSIVE, 0, 0, &stream );
        if (FUNC5( hr ))
        {
            hr = FUNC11( stream, db->streams[i].stream );
            if (FUNC1( hr ))
            {
                FUNC0("failed to write stream %s (hr = %08x)\n", FUNC7(encname), hr);
                FUNC9( encname );
                FUNC4( stream );
                return ERROR_FUNCTION_FAILED;
            }
            hr = FUNC3( stream, 0 );
            FUNC4( stream );
            if (FUNC1( hr ))
            {
                FUNC0("failed to commit stream %s (hr = %08x)\n", FUNC7(encname), hr);
                FUNC9( encname );
                return ERROR_FUNCTION_FAILED;
            }
        }
        else if (hr != STG_E_FILEALREADYEXISTS)
        {
            FUNC0("failed to create stream %s (hr = %08x)\n", FUNC7(encname), hr);
            FUNC9( encname );
            return ERROR_FUNCTION_FAILED;
        }
        FUNC9( encname );
    }

    return ERROR_SUCCESS;
}