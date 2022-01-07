
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 scalar_t__ GetVolumeInformationW (char const*,int *,int ,int *,int *,int *,char*,int) ;
 int MAX_PATH ;
 char* heap_strdupW (char const*) ;

__attribute__((used)) static WCHAR *get_filesystem( const WCHAR *root )
{
    static const WCHAR ntfsW[] = {'N','T','F','S',0};
    WCHAR buffer[MAX_PATH + 1];

    if (GetVolumeInformationW( root, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), buffer, MAX_PATH + 1 ))
        return heap_strdupW( buffer );
    return heap_strdupW( ntfsW );
}
