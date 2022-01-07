
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int info ;
typedef int WCHAR ;
struct TYPE_7__ {int cbAssemblyInfo; int cchBuf; int * pszCurrentAssemblyPathBuf; } ;
struct TYPE_6__ {int ** cache_net; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int IAssemblyCache ;
typedef scalar_t__ HRESULT ;
typedef TYPE_2__ ASSEMBLY_INFO ;


 size_t CLR_VERSION_V40 ;
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IAssemblyCache_QueryAssemblyInfo (int *,int ,int const*,TYPE_2__*) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;

WCHAR *msi_get_assembly_path( MSIPACKAGE *package, const WCHAR *displayname )
{
    HRESULT hr;
    ASSEMBLY_INFO info;
    IAssemblyCache *cache = package->cache_net[CLR_VERSION_V40];

    if (!cache) return ((void*)0);

    memset( &info, 0, sizeof(info) );
    info.cbAssemblyInfo = sizeof(info);
    hr = IAssemblyCache_QueryAssemblyInfo( cache, 0, displayname, &info );
    if (hr != E_NOT_SUFFICIENT_BUFFER) return ((void*)0);

    if (!(info.pszCurrentAssemblyPathBuf = msi_alloc( info.cchBuf * sizeof(WCHAR) ))) return ((void*)0);

    hr = IAssemblyCache_QueryAssemblyInfo( cache, 0, displayname, &info );
    if (FAILED( hr ))
    {
        msi_free( info.pszCurrentAssemblyPathBuf );
        return ((void*)0);
    }
    TRACE("returning %s\n", debugstr_w(info.pszCurrentAssemblyPathBuf));
    return info.pszCurrentAssemblyPathBuf;
}
