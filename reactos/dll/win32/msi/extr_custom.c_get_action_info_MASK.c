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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IWineMsiRemotePackage ;
typedef  int /*<<< orphan*/  IWineMsiRemoteCustomAction ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WineMsiRemoteCustomAction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IWineMsiRemoteCustomAction ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC6( const GUID *guid, INT *type, MSIHANDLE *handle,
                             BSTR *dll, BSTR *funcname,
                             IWineMsiRemotePackage **package )
{
    IClassFactory *cf = NULL;
    IWineMsiRemoteCustomAction *rca = NULL;
    HRESULT r;

    r = FUNC0( &CLSID_WineMsiRemoteCustomAction,
                           &IID_IClassFactory, (LPVOID *)&cf );
    if (FUNC2(r))
    {
        FUNC1("failed to get IClassFactory interface\n");
        return ERROR_FUNCTION_FAILED;
    }

    r = FUNC3( cf, NULL, &IID_IWineMsiRemoteCustomAction, (LPVOID *)&rca );
    if (FUNC2(r))
    {
        FUNC1("failed to get IWineMsiRemoteCustomAction interface\n");
        return ERROR_FUNCTION_FAILED;
    }

    r = FUNC4( rca, guid, type, handle, dll, funcname, package );
    FUNC5( rca );
    if (FUNC2(r))
    {
        FUNC1("GetActionInfo failed\n");
        return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}