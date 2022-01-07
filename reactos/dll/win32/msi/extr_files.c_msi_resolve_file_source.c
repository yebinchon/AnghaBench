
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int * File; int LongName; int ShortName; TYPE_1__* Component; scalar_t__ IsCompressed; } ;
struct TYPE_4__ {int Directory; } ;
typedef int MSIPACKAGE ;
typedef TYPE_2__ MSIFILE ;


 scalar_t__ GetFileAttributesW (int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int TRACE (char*,int ,...) ;
 int debugstr_w (int *) ;
 int * msi_build_directory_name (int,int *,int ) ;
 int msi_free (int *) ;
 int * msi_resolve_source_folder (int *,int ,int *) ;

WCHAR *msi_resolve_file_source( MSIPACKAGE *package, MSIFILE *file )
{
    WCHAR *p, *path;

    TRACE("Working to resolve source of file %s\n", debugstr_w(file->File));

    if (file->IsCompressed) return ((void*)0);

    p = msi_resolve_source_folder( package, file->Component->Directory, ((void*)0) );
    path = msi_build_directory_name( 2, p, file->ShortName );

    if (file->LongName && GetFileAttributesW( path ) == INVALID_FILE_ATTRIBUTES)
    {
        msi_free( path );
        path = msi_build_directory_name( 2, p, file->LongName );
    }
    msi_free( p );
    TRACE("file %s source resolves to %s\n", debugstr_w(file->File), debugstr_w(path));
    return path;
}
