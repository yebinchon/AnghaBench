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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6( IStorage *stg, const GUID *clsid )
{
    static const WCHAR szTables[]  = { '_','T','a','b','l','e','s',0 };
    HRESULT hr;

    hr = FUNC2( stg, clsid );
    if (FUNC0( hr ))
    {
        FUNC3("failed to set class id 0x%08x\n", hr);
        return hr;
    }

    /* create the _Tables stream */
    hr = FUNC5( stg, szTables, NULL, 0, TRUE );
    if (FUNC0( hr ))
    {
        FUNC3("failed to create _Tables stream 0x%08x\n", hr);
        return hr;
    }

    hr = FUNC4( stg );
    if (FUNC0( hr ))
    {
        FUNC3("failed to initialize string table 0x%08x\n", hr);
        return hr;
    }

    hr = FUNC1( stg, 0 );
    if (FUNC0( hr ))
    {
        FUNC3("failed to commit changes 0x%08x\n", hr);
        return hr;
    }

    return S_OK;
}