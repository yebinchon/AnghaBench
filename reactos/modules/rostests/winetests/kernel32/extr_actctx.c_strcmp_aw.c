
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int LPCWSTR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int lstrcmpW (int ,int *) ;

__attribute__((used)) static int strcmp_aw(LPCWSTR strw, const char *stra)
{
    WCHAR buf[1024];

    if (!stra) return 1;
    MultiByteToWideChar(CP_ACP, 0, stra, -1, buf, sizeof(buf)/sizeof(WCHAR));
    return lstrcmpW(strw, buf);
}
