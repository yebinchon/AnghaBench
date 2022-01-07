
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int OsThunkDdDeleteDirectDrawObject (int *) ;
 int TRUE ;
 int printf (char*) ;
 int show_status (int,char*) ;
 int testing_eq (int ,int ,int,char*) ;

void
test_NtGdiDdDeleteDirectDrawObject(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    printf("Start testing of NtGdiDdDeleteDirectDrawObject\n");

    retValue = OsThunkDdDeleteDirectDrawObject(hDirectDrawLocal);
    testing_eq(retValue,FALSE,fails,"NtGdiDdDeleteDirectDrawObject(hDirectDrawLocal);\0");

    retValue = OsThunkDdDeleteDirectDrawObject(((void*)0));
    testing_eq(retValue,TRUE,fails,"NtGdiDdDeleteDirectDrawObject(NULL);\0");

    show_status(fails, "NtGdiDdDeleteDirectDrawObject\0");
}
