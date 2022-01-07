
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int LPCWSTR ;
typedef int CHAR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int ,int ) ;
 int lstrcmpA (int *,char const*) ;

__attribute__((used)) static int strcmp_wa(LPCWSTR strw, const char *stra)
{
    CHAR buf[512];
    WideCharToMultiByte(CP_ACP, 0, strw, -1, buf, sizeof(buf), 0, 0);
    return lstrcmpA(buf, stra);
}
