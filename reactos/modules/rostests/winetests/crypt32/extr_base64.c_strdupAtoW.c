
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static WCHAR *strdupAtoW(const char *str)
{
    WCHAR *ret = ((void*)0);
    DWORD len;

    if (!str) return ret;
    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    ret = heap_alloc(len * sizeof(WCHAR));
    if (ret)
        MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);
    return ret;
}
