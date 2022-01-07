
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,int *,int ,int *,int *) ;
 int * heap_alloc (int ) ;

__attribute__((used)) static inline LPSTR strWtoA( LPCWSTR str )
{
    LPSTR ret = ((void*)0);
    if (str)
    {
        DWORD len = WideCharToMultiByte( CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
        if ((ret = heap_alloc( len )))
            WideCharToMultiByte( CP_ACP, 0, str, -1, ret, len, ((void*)0), ((void*)0) );
    }
    return ret;
}
