
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef scalar_t__ CHAR ;
typedef int BOOL ;


 int CP_ACP ;
 int FALSE ;
 int WideCharToMultiByte (int ,int ,int const*,int,scalar_t__*,int,int *,int *) ;
 int lstrcmpA (scalar_t__*,char const*) ;
 int lstrlenA (char const*) ;

__attribute__((used)) static BOOL is_prefix_wa(const WCHAR *strw, const char *prefix)
{
    int len, prefix_len;
    CHAR buf[512];

    len = WideCharToMultiByte(CP_ACP, 0, strw, -1, buf, sizeof(buf), ((void*)0), ((void*)0))-1;
    prefix_len = lstrlenA(prefix);
    if(len < prefix_len)
        return FALSE;

    buf[prefix_len] = 0;
    return !lstrcmpA(buf, prefix);
}
