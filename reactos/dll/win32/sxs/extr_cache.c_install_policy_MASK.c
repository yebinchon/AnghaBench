#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct assembly {int /*<<< orphan*/  version; int /*<<< orphan*/  token; int /*<<< orphan*/  name; int /*<<< orphan*/  arch; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7( const WCHAR *manifest, struct assembly *assembly )
{
    WCHAR *dst;
    BOOL ret;

    /* FIXME: handle catalog file */

    dst = FUNC6( assembly->arch, assembly->name, assembly->token, assembly->version );
    if (!dst) return E_OUTOFMEMORY;

    ret = FUNC0( manifest, dst, FALSE );
    FUNC4( FUNC2(), 0, dst );
    if (!ret)
    {
        HRESULT hr = FUNC3( FUNC1() );
        FUNC5("failed to copy policy manifest file 0x%08x\n", hr);
        return hr;
    }
    return S_OK;
}