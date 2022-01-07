
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwScanLine; int ddRVal; } ;
typedef int * HANDLE ;
typedef TYPE_1__ DD_GETSCANLINEDATA ;
typedef int BOOL ;


 int DDERR_GENERIC ;
 int DDHAL_DRIVER_HANDLED ;
 int DDHAL_DRIVER_NOTHANDLED ;
 int DD_OK ;
 int FALSE ;
 int OsThunkDdGetScanLine (int *,TYPE_1__*) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int printf (char*) ;
 int show_status (int,char*) ;
 int testing_eq (int ,int ,int,char*) ;
 int testing_noteq (int ,int ,int,char*) ;

void
test_NtGdiDdGetScanLine(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    DD_GETSCANLINEDATA puGetScanLineData;

    printf("Start testing of NtGdiDdGetScanLine\n");
    RtlZeroMemory(&puGetScanLineData,sizeof(DD_GETSCANLINEDATA));

    retValue = OsThunkDdGetScanLine(((void*)0),((void*)0));
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"1. NtGdiDdGetScanLine(NULL,NULL);\0");

    retValue = OsThunkDdGetScanLine(hDirectDrawLocal,((void*)0));
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"2. NtGdiDdGetScanLine(hDirectDrawLocal,NULL);\0");

    puGetScanLineData.ddRVal = DDERR_GENERIC;
    retValue = OsThunkDdGetScanLine(hDirectDrawLocal,&puGetScanLineData);
    testing_eq(retValue,DDHAL_DRIVER_NOTHANDLED,fails,"3. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\0");
    testing_noteq(puGetScanLineData.ddRVal,DD_OK,fails,"4. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\0");
    testing_eq(puGetScanLineData.dwScanLine,0,fails,"4. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\0");




    show_status(fails, "NtGdiDdGetScanLine\0");
}
