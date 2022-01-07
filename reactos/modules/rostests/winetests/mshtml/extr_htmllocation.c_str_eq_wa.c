
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ LPCWSTR ;
typedef int CHAR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,int *,int,int *,int *) ;
 int lstrcmpA (char const*,int *) ;

__attribute__((used)) static int str_eq_wa(LPCWSTR strw, const char *stra)
{
    CHAR buf[512];

    if(!strw || !stra)
        return (void*)strw == (void*)stra;

    WideCharToMultiByte(CP_ACP, 0, strw, -1, buf, sizeof(buf), ((void*)0), ((void*)0));
    return !lstrcmpA(stra, buf);
}
