
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static WCHAR *make_wstr(const char *str)
{
    WCHAR *ret;
    int len;

    if (!str || !str[0])
        return ((void*)0);

    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    if(!len || len < 0)
        return ((void*)0);

    ret = heap_alloc(len * sizeof(WCHAR));
    if(!ret)
        return ((void*)0);

    MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);
    return ret;
}
