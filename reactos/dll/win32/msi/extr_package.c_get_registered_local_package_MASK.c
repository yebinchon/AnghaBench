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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIINSTALLCONTEXT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int GUID_SIZE ; 
 int /*<<< orphan*/  INSTALLPROPERTY_LOCALPACKAGEW ; 
 int /*<<< orphan*/  INSTALLPROPERTY_PACKAGECODEW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC9( const WCHAR *product, const WCHAR *package, WCHAR *localfile )
{
    MSIINSTALLCONTEXT context;
    HKEY product_key, props_key;
    WCHAR *registered_package = NULL, unsquashed[GUID_SIZE];
    UINT r;

    r = FUNC4( product, &context );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC1( product, NULL, context, &product_key, FALSE );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC0( product, context, NULL, &props_key, FALSE );
    if (r != ERROR_SUCCESS)
    {
        FUNC2( product_key );
        return r;
    }
    r = ERROR_FUNCTION_FAILED;
    registered_package = FUNC5( product_key, INSTALLPROPERTY_PACKAGECODEW );
    if (!registered_package)
        goto done;

    FUNC8( registered_package, unsquashed );
    if (!FUNC6( package, unsquashed ))
    {
        WCHAR *filename = FUNC5( props_key, INSTALLPROPERTY_LOCALPACKAGEW );
        if (!filename)
            goto done;

        FUNC7( localfile, filename );
        FUNC3( filename );
        r = ERROR_SUCCESS;
    }
done:
    FUNC3( registered_package );
    FUNC2( props_key );
    FUNC2( product_key );
    return r;
}