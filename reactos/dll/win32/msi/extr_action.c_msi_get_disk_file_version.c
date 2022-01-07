
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VS_FIXEDFILEINFO ;
typedef int UINT ;
typedef void* LPVOID ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int GetFileVersionInfoSizeW (int ,int *) ;
 int GetFileVersionInfoW (int ,int ,int ,void*) ;
 int VerQueryValueW (void*,char const*,void**,int *) ;
 int memcpy (int *,int *,int ) ;
 void* msi_alloc (int ) ;
 int msi_free (void*) ;

VS_FIXEDFILEINFO *msi_get_disk_file_version( LPCWSTR filename )
{
    static const WCHAR name[] = {'\\',0};
    VS_FIXEDFILEINFO *ptr, *ret;
    LPVOID version;
    DWORD versize, handle;
    UINT sz;

    versize = GetFileVersionInfoSizeW( filename, &handle );
    if (!versize)
        return ((void*)0);

    version = msi_alloc( versize );
    if (!version)
        return ((void*)0);

    GetFileVersionInfoW( filename, 0, versize, version );

    if (!VerQueryValueW( version, name, (LPVOID *)&ptr, &sz ))
    {
        msi_free( version );
        return ((void*)0);
    }

    ret = msi_alloc( sz );
    memcpy( ret, ptr, sz );

    msi_free( version );
    return ret;
}
