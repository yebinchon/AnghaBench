
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int CHAR ;
typedef int BOOL ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int const*,int,int *,int,int *,int *) ;
 int * strstr (int *,char const*) ;

__attribute__((used)) static BOOL wstr_contains(const WCHAR *strw, const char *stra)
{
    CHAR buf[512];
    WideCharToMultiByte(CP_ACP, 0, strw, -1, buf, sizeof(buf), ((void*)0), ((void*)0));
    return strstr(buf, stra) != ((void*)0);
}
