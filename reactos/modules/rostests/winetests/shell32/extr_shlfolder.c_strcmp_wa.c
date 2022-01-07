
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int LPCWSTR ;
typedef int CHAR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int *,int *) ;
 int lstrcmpA (char const*,int *) ;

__attribute__((used)) static int strcmp_wa(LPCWSTR strw, const char *stra)
{
    CHAR buf[512];
    WideCharToMultiByte(CP_ACP, 0, strw, -1, buf, sizeof(buf), ((void*)0), ((void*)0));
    return lstrcmpA(stra, buf);
}
