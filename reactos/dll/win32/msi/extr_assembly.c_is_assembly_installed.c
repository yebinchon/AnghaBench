
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int info ;
typedef int WCHAR ;
struct TYPE_4__ {int cbAssemblyInfo; scalar_t__ dwAssemblyFlags; } ;
typedef int IAssemblyCache ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;
typedef TYPE_1__ ASSEMBLY_INFO ;


 scalar_t__ ASSEMBLYINFO_FLAG_INSTALLED ;
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ;
 int FALSE ;
 scalar_t__ IAssemblyCache_QueryAssemblyInfo (int *,int ,int const*,TYPE_1__*) ;
 scalar_t__ S_OK ;
 int TRACE (char*,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL is_assembly_installed( IAssemblyCache *cache, const WCHAR *display_name )
{
    HRESULT hr;
    ASSEMBLY_INFO info;

    if (!cache) return FALSE;

    memset( &info, 0, sizeof(info) );
    info.cbAssemblyInfo = sizeof(info);
    hr = IAssemblyCache_QueryAssemblyInfo( cache, 0, display_name, &info );
    if (hr == S_OK || hr == E_NOT_SUFFICIENT_BUFFER)
    {
        return (info.dwAssemblyFlags == ASSEMBLYINFO_FLAG_INSTALLED);
    }
    TRACE("QueryAssemblyInfo returned 0x%08x\n", hr);
    return FALSE;
}
