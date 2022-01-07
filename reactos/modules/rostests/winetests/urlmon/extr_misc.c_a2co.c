
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 int * CoTaskMemAlloc (int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;

__attribute__((used)) static WCHAR *a2co(const char *str)
{
    WCHAR *ret;
    int len;

    if(!str)
        return ((void*)0);

    len = MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0);
    ret = CoTaskMemAlloc(len*sizeof(WCHAR));
    MultiByteToWideChar(CP_ACP, 0, str, -1, ret, len);

    return ret;
}
