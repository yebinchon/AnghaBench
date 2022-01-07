
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ WCHAR ;
typedef int BOOL ;


 int CP_ACP ;
 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringA (int ,int,char*,int ,char const*,int) ;
 int FALSE ;
 int GetProcessHeap () ;
 int GetThreadLocale () ;
 char* HeapAlloc (int ,int ,int) ;
 int LOCALE_USE_CP_ACP ;
 int NORM_IGNORECASE ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,scalar_t__ const*,int,char*,int,int *,int *) ;
 int memcpy (char*,char*,int) ;
 int min (int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL get_env(const WCHAR * env, const char * var, char ** result)
{
    const WCHAR * p = env;
    int envlen, varlen, buflen;
    char buf[256];

    if (!env || !var || !result) return FALSE;

    varlen = strlen(var);
    do
    {
        if (!WideCharToMultiByte( CP_ACP, 0, p, -1, buf, sizeof(buf), ((void*)0), ((void*)0) )) buf[sizeof(buf)-1] = 0;
        envlen = strlen(buf);
        if (CompareStringA(GetThreadLocale(), NORM_IGNORECASE|LOCALE_USE_CP_ACP, buf, min(envlen, varlen), var, varlen) == CSTR_EQUAL)
        {
            if (buf[varlen] == '=')
            {
                buflen = strlen(buf);
                *result = HeapAlloc(GetProcessHeap(), 0, buflen + 1);
                if (!*result) return FALSE;
                memcpy(*result, buf, buflen + 1);
                return TRUE;
            }
        }
        while (*p) p++;
        p++;
    } while (*p);
    return FALSE;
}
