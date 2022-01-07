
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int * HANDLE ;


 int * CreateDCW (char*,int *,int *,int *) ;
 int * OsThunkDdCreateDirectDrawObject (int *) ;
 int printf (char*) ;
 int show_status (int,char*) ;
 int testing_eq (int *,int *,int,char*) ;
 int testing_noteq (int *,int *,int,char*) ;

HANDLE
test_NtGdiDdCreateDirectDrawObject()
{
    HANDLE retValue=0;
    int fails=0;
    HDC hdc=CreateDCW(L"Display",((void*)0),((void*)0),((void*)0));

    if (hdc == ((void*)0))
    {
        printf("No hdc was created with Display, trying now with DISPLAY\n");
        hdc=CreateDCW(L"DISPLAY",((void*)0),((void*)0),((void*)0));
        if (hdc == ((void*)0))
        {
            printf("No hdc was created with DISPLAY, trying now with NULL\n");
            hdc=CreateDCW(((void*)0),((void*)0),((void*)0),((void*)0));
        }
    }

    if (hdc == ((void*)0))
    {
        printf("No hdc was created at all perpare all test will fail\n");
        return ((void*)0);
    }

    printf("Start testing of NtGdiDdCreateDirectDrawObject\n");

    retValue = OsThunkDdCreateDirectDrawObject(((void*)0));
    testing_noteq(retValue,((void*)0),fails,"NtGdiDdCreateDirectDrawObject(NULL);\0");

    retValue = OsThunkDdCreateDirectDrawObject(hdc);
    testing_eq(retValue,((void*)0),fails,"NtGdiDdCreateDirectDrawObject(hdc);\0");

    show_status(fails, "NtGdiDdCreateDirectDrawObject\0");

    return retValue;
}
