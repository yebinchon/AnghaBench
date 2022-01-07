
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int ** cache_net; int * cache_sxs; } ;
typedef TYPE_1__ MSIPACKAGE ;


 size_t CLR_VERSION_MAX ;
 int FreeLibrary (int *) ;
 int IAssemblyCache_Release (int *) ;
 int * hfusion10 ;
 int * hfusion11 ;
 int * hfusion20 ;
 int * hfusion40 ;
 int * hmscoree ;
 int * hsxs ;
 int * pCreateAssemblyCacheNet10 ;
 int * pCreateAssemblyCacheNet11 ;
 int * pCreateAssemblyCacheNet20 ;
 int * pCreateAssemblyCacheNet40 ;

void msi_destroy_assembly_caches( MSIPACKAGE *package )
{
    UINT i;

    if (package->cache_sxs)
    {
        IAssemblyCache_Release( package->cache_sxs );
        package->cache_sxs = ((void*)0);
    }
    for (i = 0; i < CLR_VERSION_MAX; i++)
    {
        if (package->cache_net[i])
        {
            IAssemblyCache_Release( package->cache_net[i] );
            package->cache_net[i] = ((void*)0);
        }
    }
    pCreateAssemblyCacheNet10 = ((void*)0);
    pCreateAssemblyCacheNet11 = ((void*)0);
    pCreateAssemblyCacheNet20 = ((void*)0);
    pCreateAssemblyCacheNet40 = ((void*)0);
    FreeLibrary( hfusion10 );
    FreeLibrary( hfusion11 );
    FreeLibrary( hfusion20 );
    FreeLibrary( hfusion40 );
    FreeLibrary( hmscoree );
    FreeLibrary( hsxs );
    hfusion10 = ((void*)0);
    hfusion11 = ((void*)0);
    hfusion20 = ((void*)0);
    hfusion40 = ((void*)0);
    hmscoree = ((void*)0);
    hsxs = ((void*)0);
}
