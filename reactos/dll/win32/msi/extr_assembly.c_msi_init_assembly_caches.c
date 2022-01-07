
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cache_net; int cache_sxs; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int BOOL ;


 size_t CLR_VERSION_V10 ;
 size_t CLR_VERSION_V11 ;
 size_t CLR_VERSION_V20 ;
 size_t CLR_VERSION_V40 ;
 int FALSE ;
 scalar_t__ S_OK ;
 int TRUE ;
 int init_function_pointers () ;
 int pCreateAssemblyCacheNet10 (int *,int ) ;
 int pCreateAssemblyCacheNet11 (int *,int ) ;
 int pCreateAssemblyCacheNet20 (int *,int ) ;
 int pCreateAssemblyCacheNet40 (int *,int ) ;
 scalar_t__ pCreateAssemblyCacheSxs (int *,int ) ;

BOOL msi_init_assembly_caches( MSIPACKAGE *package )
{
    if (!init_function_pointers()) return FALSE;
    if (pCreateAssemblyCacheSxs( &package->cache_sxs, 0 ) != S_OK) return FALSE;
    if (pCreateAssemblyCacheNet10) pCreateAssemblyCacheNet10( &package->cache_net[CLR_VERSION_V10], 0 );
    if (pCreateAssemblyCacheNet11) pCreateAssemblyCacheNet11( &package->cache_net[CLR_VERSION_V11], 0 );
    if (pCreateAssemblyCacheNet20) pCreateAssemblyCacheNet20( &package->cache_net[CLR_VERSION_V20], 0 );
    if (pCreateAssemblyCacheNet40) pCreateAssemblyCacheNet40( &package->cache_net[CLR_VERSION_V40], 0 );
    return TRUE;
}
