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
typedef  int REGSAM ;
typedef  int /*<<< orphan*/  MSICOMPONENT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int READ_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC7 (scalar_t__ const*) ; 
 scalar_t__* FUNC8 (scalar_t__*,char) ; 

__attribute__((used)) static void FUNC9( const MSICOMPONENT *comp, HKEY root, const WCHAR *path )
{
    REGSAM access = 0;
    WCHAR *subkey, *p;
    HKEY hkey;
    LONG res;

    access |= FUNC4( comp );

    if (!(subkey = FUNC7( path ))) return;
    do
    {
        if ((p = FUNC8( subkey, '\\' )))
        {
            *p = 0;
            if (!p[1]) continue; /* trailing backslash */
            hkey = FUNC6( comp, root, subkey, FALSE, access | READ_CONTROL );
            if (!hkey) break;
            res = FUNC1( hkey, p + 1, access, 0 );
            FUNC0( hkey );
        }
        else
            res = FUNC1( root, subkey, access, 0 );
        if (res)
        {
            FUNC2("failed to delete key %s (%d)\n", FUNC3(subkey), res);
            break;
        }
    } while (p);
    FUNC5( subkey );
}