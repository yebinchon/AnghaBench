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
typedef  size_t UINT ;
struct TYPE_3__ {int /*<<< orphan*/ ** cache_net; int /*<<< orphan*/ * cache_sxs; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 size_t CLR_VERSION_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hfusion10 ; 
 int /*<<< orphan*/ * hfusion11 ; 
 int /*<<< orphan*/ * hfusion20 ; 
 int /*<<< orphan*/ * hfusion40 ; 
 int /*<<< orphan*/ * hmscoree ; 
 int /*<<< orphan*/ * hsxs ; 
 int /*<<< orphan*/ * pCreateAssemblyCacheNet10 ; 
 int /*<<< orphan*/ * pCreateAssemblyCacheNet11 ; 
 int /*<<< orphan*/ * pCreateAssemblyCacheNet20 ; 
 int /*<<< orphan*/ * pCreateAssemblyCacheNet40 ; 

void FUNC2( MSIPACKAGE *package )
{
    UINT i;

    if (package->cache_sxs)
    {
        FUNC1( package->cache_sxs );
        package->cache_sxs = NULL;
    }
    for (i = 0; i < CLR_VERSION_MAX; i++)
    {
        if (package->cache_net[i])
        {
            FUNC1( package->cache_net[i] );
            package->cache_net[i] = NULL;
        }
    }
    pCreateAssemblyCacheNet10 = NULL;
    pCreateAssemblyCacheNet11 = NULL;
    pCreateAssemblyCacheNet20 = NULL;
    pCreateAssemblyCacheNet40 = NULL;
    FUNC0( hfusion10 );
    FUNC0( hfusion11 );
    FUNC0( hfusion20 );
    FUNC0( hfusion40 );
    FUNC0( hmscoree );
    FUNC0( hsxs );
    hfusion10 = NULL;
    hfusion11 = NULL;
    hfusion20 = NULL;
    hfusion40 = NULL;
    hmscoree = NULL;
    hsxs = NULL;
}