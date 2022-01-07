
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_2__ {int dwFileVersionMS; int dwFileVersionLS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef int DWORD ;


 int ARRAY_SIZE (char const*) ;
 int GetFileVersionInfoSizeW (char const*,int *) ;
 int GetFileVersionInfoW (char const*,int ,int,void*) ;
 int VerQueryValueW (void*,char const*,void**,int*) ;
 void* heap_alloc (int) ;
 int heap_free (void*) ;
 int sprintfW (char*,char const*,int,int,int,int) ;

__attribute__((used)) static WCHAR *get_file_version( const WCHAR *filename )
{
    static const WCHAR slashW[] = {'\\',0}, fmtW[] = {'%','u','.','%','u','.','%','u','.','%','u',0};
    VS_FIXEDFILEINFO *info;
    DWORD size;
    void *block;
    WCHAR *ret;

    if (!(ret = heap_alloc( (4 * 5 + ARRAY_SIZE( fmtW )) * sizeof(WCHAR) ))) return ((void*)0);
    if (!(size = GetFileVersionInfoSizeW( filename, ((void*)0) )) || !(block = heap_alloc( size )))
    {
        heap_free( ret );
        return ((void*)0);
    }
    if (!GetFileVersionInfoW( filename, 0, size, block ) ||
        !VerQueryValueW( block, slashW, (void **)&info, &size ))
    {
        heap_free( block );
        heap_free( ret );
        return ((void*)0);
    }
    sprintfW( ret, fmtW, info->dwFileVersionMS >> 16, info->dwFileVersionMS & 0xffff,
                         info->dwFileVersionLS >> 16, info->dwFileVersionLS & 0xffff );
    heap_free( block );
    return ret;
}
