
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;
 int lstrcmpW (int ,int *) ;

__attribute__((used)) static int strcmp_wa(LPCWSTR strw, const char *stra)
{
    WCHAR buf[512];
    MultiByteToWideChar(CP_ACP, 0, stra, -1, buf, ARRAY_SIZE(buf));
    return lstrcmpW(strw, buf);
}
