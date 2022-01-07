
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static inline LPWSTR strUtoW( char *str )
{
    LPWSTR ret = ((void*)0);
    if (str)
    {
        DWORD len = MultiByteToWideChar( CP_UTF8, 0, str, -1, ((void*)0), 0 );
        if ((ret = heap_alloc( len * sizeof(WCHAR) )))
            MultiByteToWideChar( CP_UTF8, 0, str, -1, ret, len );
    }
    return ret;
}
