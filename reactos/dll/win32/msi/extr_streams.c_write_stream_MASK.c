#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {TYPE_4__ cbSize; } ;
typedef  TYPE_1__ STATSTG ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC8( IStream *dst, IStream *src )
{
    HRESULT hr;
    char buf[4096];
    STATSTG stat;
    LARGE_INTEGER pos;
    UINT count, size;

    hr = FUNC4( src, &stat, STATFLAG_NONAME );
    if (FUNC0( hr )) return hr;

    hr = FUNC3( dst, stat.cbSize );
    if (FUNC0( hr )) return hr;

    pos.QuadPart = 0;
    hr = FUNC2( dst, pos, STREAM_SEEK_SET, NULL );
    if (FUNC0( hr )) return hr;

    for (;;)
    {
        size = FUNC7( sizeof(buf), stat.cbSize.QuadPart );
        hr = FUNC1( src, buf, size, &count );
        if (FUNC0( hr ) || count != size)
        {
            FUNC6("failed to read stream: %08x\n", hr);
            return E_INVALIDARG;
        }
        stat.cbSize.QuadPart -= count;
        if (count)
        {
            size = count;
            hr = FUNC5( dst, buf, size, &count );
            if (FUNC0( hr ) || count != size)
            {
                FUNC6("failed to write stream: %08x\n", hr);
                return E_INVALIDARG;
            }
        }
        if (!stat.cbSize.QuadPart) break;
    }

    return S_OK;
}