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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_5__ {int /*<<< orphan*/ * stream; } ;
typedef  TYPE_1__ MSISTREAM ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

UINT FUNC9( MSIDATABASE *db, const WCHAR *name, IStream **ret )
{
    MSISTREAM *stream;
    WCHAR *encname;
    HRESULT hr;
    UINT r;

    if ((stream = FUNC6( db, name )))
    {
        LARGE_INTEGER pos;

        pos.QuadPart = 0;
        hr = FUNC3( stream->stream, pos, STREAM_SEEK_SET, NULL );
        if (FUNC0( hr ))
            return ERROR_FUNCTION_FAILED;

        *ret = stream->stream;
        FUNC1( *ret );
        return ERROR_SUCCESS;
    }

    if (!(encname = FUNC5( FALSE, name )))
        return ERROR_OUTOFMEMORY;

    hr = FUNC8( db, encname, ret );
    FUNC7( encname );
    if (FUNC0( hr ))
        return ERROR_FUNCTION_FAILED;

    r = FUNC4( db, name, *ret );
    if (r != ERROR_SUCCESS)
    {
        FUNC2( *ret );
        return r;
    }

    FUNC1( *ret );
    return ERROR_SUCCESS;
}