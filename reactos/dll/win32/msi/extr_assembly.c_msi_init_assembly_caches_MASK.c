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
struct TYPE_3__ {int /*<<< orphan*/ * cache_net; int /*<<< orphan*/  cache_sxs; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t CLR_VERSION_V10 ; 
 size_t CLR_VERSION_V11 ; 
 size_t CLR_VERSION_V20 ; 
 size_t CLR_VERSION_V40 ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC6( MSIPACKAGE *package )
{
    if (!FUNC0()) return FALSE;
    if (FUNC5( &package->cache_sxs, 0 ) != S_OK) return FALSE;
    if (&pCreateAssemblyCacheNet10) FUNC1( &package->cache_net[CLR_VERSION_V10], 0 );
    if (&pCreateAssemblyCacheNet11) FUNC2( &package->cache_net[CLR_VERSION_V11], 0 );
    if (&pCreateAssemblyCacheNet20) FUNC3( &package->cache_net[CLR_VERSION_V20], 0 );
    if (&pCreateAssemblyCacheNet40) FUNC4( &package->cache_net[CLR_VERSION_V40], 0 );
    return TRUE;
}