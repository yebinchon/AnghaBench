
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stra2 ;
typedef int stra1 ;
typedef int LPCWSTR ;
typedef int CHAR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int *,int *) ;
 int lstrcmpA (int *,int *) ;

__attribute__((used)) static int strcmp_ww(LPCWSTR strw1, LPCWSTR strw2)
{
    CHAR stra1[512], stra2[512];
    WideCharToMultiByte(CP_ACP, 0, strw1, -1, stra1, sizeof(stra1), ((void*)0), ((void*)0));
    WideCharToMultiByte(CP_ACP, 0, strw2, -1, stra2, sizeof(stra2), ((void*)0), ((void*)0));
    return lstrcmpA(stra1, stra2);
}
