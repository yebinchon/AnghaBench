
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;
typedef int UINT ;
typedef int MSIPACKAGE ;
typedef int IAssemblyName ;
typedef int IAssemblyEnum ;
typedef scalar_t__ HRESULT ;


 int ASM_CACHE_GAC ;
 int CANOF_PARSE_DISPLAY_NAME ;
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IAssemblyName_GetName (int *,int*,int const*) ;
 int IAssemblyName_Release (int *) ;
 int const* msi_alloc (int) ;
 int msi_free (int const*) ;
 scalar_t__ pCreateAssemblyEnum (int **,int *,int *,int ,int *) ;
 scalar_t__ pCreateAssemblyNameObject (int **,int const*,int ,int *) ;

IAssemblyEnum *msi_create_assembly_enum( MSIPACKAGE *package, const WCHAR *displayname )
{
    HRESULT hr;
    IAssemblyName *name;
    IAssemblyEnum *ret;
    WCHAR *str;
    UINT len = 0;

    if (!pCreateAssemblyNameObject || !pCreateAssemblyEnum) return ((void*)0);

    hr = pCreateAssemblyNameObject( &name, displayname, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    if (FAILED( hr )) return ((void*)0);

    hr = IAssemblyName_GetName( name, &len, ((void*)0) );
    if (hr != E_NOT_SUFFICIENT_BUFFER || !(str = msi_alloc( len * sizeof(WCHAR) )))
    {
        IAssemblyName_Release( name );
        return ((void*)0);
    }

    hr = IAssemblyName_GetName( name, &len, str );
    IAssemblyName_Release( name );
    if (FAILED( hr ))
    {
        msi_free( str );
        return ((void*)0);
    }

    hr = pCreateAssemblyNameObject( &name, str, 0, ((void*)0) );
    msi_free( str );
    if (FAILED( hr )) return ((void*)0);

    hr = pCreateAssemblyEnum( &ret, ((void*)0), name, ASM_CACHE_GAC, ((void*)0) );
    IAssemblyName_Release( name );
    if (FAILED( hr )) return ((void*)0);

    return ret;
}
