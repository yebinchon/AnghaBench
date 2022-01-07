
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int TestMsgBoxServiceNotification () ;
 int TestSoftModalMsgBox () ;
 int _getch () ;
 int printf (char*) ;

int wmain(int argc, WCHAR* argv[])
{
    printf("Testing SoftModalMessageBox()...\n");
    TestSoftModalMsgBox();
    printf("\n");

    printf("Press any key to continue...\n");
    _getch();
    printf("\n");

    printf("Testing MB_SERVICE_NOTIFICATION...\n");
    TestMsgBoxServiceNotification();
    printf("\n");

    printf("Press any key to quit...\n");
    _getch();
    return 0;
}
