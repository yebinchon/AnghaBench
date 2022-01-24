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
typedef  int /*<<< orphan*/  MSICOMPONENT ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int KEY_QUERY_VALUE ; 
 int KEY_SET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7( const MSICOMPONENT *comp, HKEY root, const WCHAR *path, const WCHAR *value )
{
    LONG res;
    HKEY hkey;
    DWORD num_subkeys, num_values;

    if ((hkey = FUNC6( comp, root, path, FALSE, KEY_SET_VALUE | KEY_QUERY_VALUE )))
    {
        if ((res = FUNC1( hkey, value )))
            FUNC3("failed to delete value %s (%d)\n", FUNC4(value), res);

        res = FUNC2( hkey, NULL, NULL, NULL, &num_subkeys, NULL, NULL, &num_values,
                                NULL, NULL, NULL, NULL );
        FUNC0( hkey );
        if (!res && !num_subkeys && !num_values)
        {
            FUNC3("removing empty key %s\n", FUNC4(path));
            FUNC5( comp, root, path );
        }
    }
}