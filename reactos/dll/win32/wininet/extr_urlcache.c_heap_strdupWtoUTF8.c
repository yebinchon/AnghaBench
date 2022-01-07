
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,char*,int ,int *,int *) ;
 char* heap_alloc (int ) ;

__attribute__((used)) static inline char *heap_strdupWtoUTF8(LPCWSTR str)
{
    char *ret = ((void*)0);

    if(str) {
        DWORD size = WideCharToMultiByte(CP_UTF8, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        ret = heap_alloc(size);
        if(ret)
            WideCharToMultiByte(CP_UTF8, 0, str, -1, ret, size, ((void*)0), ((void*)0));
    }

    return ret;
}
