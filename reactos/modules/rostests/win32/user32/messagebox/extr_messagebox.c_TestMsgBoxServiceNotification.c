
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_DEFBUTTON3 ;
 int MB_ICONINFORMATION ;
 int MB_SERVICE_NOTIFICATION ;
 int MB_YESNOCANCEL ;
 int MessageBoxW (int *,char*,char*,int) ;
 int printf (char*,int) ;

void TestMsgBoxServiceNotification(void)
{
    int res;

    res = MessageBoxW(((void*)0), L"Hello World!", L"MB_SERVICE_NOTIFICATION",
                      MB_YESNOCANCEL | MB_DEFBUTTON3 | MB_ICONINFORMATION | MB_SERVICE_NOTIFICATION);
    printf("Returned value = %i\n", res);
}
