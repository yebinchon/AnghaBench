
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 size_t WideCharToMultiByte (int ,int ,int const*,int,char*,size_t,int *,int *) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static char *FromWide (const wchar_t *wide)
{
    size_t len;
    len = WideCharToMultiByte (CP_UTF8, 0, wide, -1, ((void*)0), 0, ((void*)0), ((void*)0));

    char *out = (char *)malloc (len);
    if (out)
        WideCharToMultiByte (CP_UTF8, 0, wide, -1, out, len, ((void*)0), ((void*)0));
    return out;
}
