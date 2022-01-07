
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int LPWSTR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;

__attribute__((used)) static const char* wtoascii(LPWSTR lpszIn)
{
    static char buff[256];
    WideCharToMultiByte(CP_ACP, 0, lpszIn, -1, buff, sizeof(buff), ((void*)0), ((void*)0));
    return buff;
}
