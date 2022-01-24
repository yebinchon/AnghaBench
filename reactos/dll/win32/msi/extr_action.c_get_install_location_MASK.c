#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  ProductCode; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szInstallLocation ; 

__attribute__((used)) static WCHAR *FUNC4( MSIPACKAGE *package )
{
    HKEY hkey;
    WCHAR *path;

    if (!package->ProductCode) return NULL;
    if (FUNC0( package->ProductCode, package->Context, NULL, &hkey, FALSE )) return NULL;
    if ((path = FUNC3( hkey, szInstallLocation )) && !path[0])
    {
        FUNC2( path );
        path = NULL;
    }
    FUNC1( hkey );
    return path;
}