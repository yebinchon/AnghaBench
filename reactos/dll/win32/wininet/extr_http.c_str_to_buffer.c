
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_SUCCESS ;
 int WideCharToMultiByte (int ,int ,scalar_t__ const*,int,char*,int,int *,int *) ;
 int strcpyW (scalar_t__*,scalar_t__ const*) ;
 int strlenW (scalar_t__ const*) ;

__attribute__((used)) static DWORD str_to_buffer(const WCHAR *str, void *buffer, DWORD *size, BOOL unicode)
{
    int len;
    if (unicode)
    {
        WCHAR *buf = buffer;

        if (str) len = strlenW(str);
        else len = 0;
        if (*size < (len + 1) * sizeof(WCHAR))
        {
            *size = (len + 1) * sizeof(WCHAR);
            return ERROR_INSUFFICIENT_BUFFER;
        }
        if (str) strcpyW(buf, str);
        else buf[0] = 0;

        *size = len;
        return ERROR_SUCCESS;
    }
    else
    {
        char *buf = buffer;

        if (str) len = WideCharToMultiByte(CP_ACP, 0, str, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        else len = 1;
        if (*size < len)
        {
            *size = len;
            return ERROR_INSUFFICIENT_BUFFER;
        }
        if (str) WideCharToMultiByte(CP_ACP, 0, str, -1, buf, *size, ((void*)0), ((void*)0));
        else buf[0] = 0;

        *size = len - 1;
        return ERROR_SUCCESS;
    }
}
