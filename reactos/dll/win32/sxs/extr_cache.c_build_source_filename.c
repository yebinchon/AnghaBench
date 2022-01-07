
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int name; } ;
typedef int WCHAR ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int memcpy (int *,int const*,int) ;
 int strcpyW (int *,int ) ;
 int * strdupW (int const*) ;
 int strlenW (int ) ;
 int * strrchrW (int const*,char) ;

__attribute__((used)) static WCHAR *build_source_filename( const WCHAR *manifest, struct file *file )
{
    WCHAR *src;
    const WCHAR *p;
    int len;

    p = strrchrW( manifest, '\\' );
    if (!p) p = strrchrW( manifest, '/' );
    if (!p) return strdupW( manifest );

    len = p - manifest + 1;
    if (!(src = HeapAlloc( GetProcessHeap(), 0, (len + strlenW( file->name ) + 1) * sizeof(WCHAR) )))
        return ((void*)0);

    memcpy( src, manifest, len * sizeof(WCHAR) );
    strcpyW( src + len, file->name );
    return src;
}
