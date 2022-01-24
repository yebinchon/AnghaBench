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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  REGSAM ;
typedef  int /*<<< orphan*/  MSICOMPONENT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__* FUNC7 (scalar_t__*,char) ; 
 scalar_t__* FUNC8 (scalar_t__ const*) ; 

__attribute__((used)) static HKEY FUNC9( const MSICOMPONENT *comp, HKEY root, const WCHAR *path, BOOL create, REGSAM access )
{
    WCHAR *subkey, *p, *q;
    HKEY hkey, ret = NULL;
    LONG res;

    access |= FUNC5( comp );

    if (!(subkey = FUNC8( path ))) return NULL;
    p = subkey;
    if ((q = FUNC7( p, '\\' ))) *q = 0;
    if (create)
        res = FUNC1( root, subkey, 0, NULL, 0, access, NULL, &hkey, NULL );
    else
        res = FUNC2( root, subkey, 0, access, &hkey );
    if (res)
    {
        FUNC3("failed to open key %s (%d)\n", FUNC4(subkey), res);
        FUNC6( subkey );
        return NULL;
    }
    if (q && q[1])
    {
        ret = FUNC9( comp, hkey, q + 1, create, access );
        FUNC0( hkey );
    }
    else ret = hkey;
    FUNC6( subkey );
    return ret;
}