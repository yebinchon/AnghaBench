
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddRVal; int dwFlags; } ;
typedef int * PDD_WAITFORVERTICALBLANKDATA ;
typedef int * HANDLE ;
typedef TYPE_1__ DDHAL_WAITFORVERTICALBLANKDATA ;
typedef int BOOL ;


 int DDHAL_DRIVER_HANDLED ;
 int DDHAL_DRIVER_NOTHANDLED ;
 int DDWAITVB_I_TESTVB ;
 int DD_OK ;
 int FALSE ;
 int OsThunkDdWaitForVerticalBlank (int *,int *) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int show_status (int,char*) ;
 int testing_eq (int ,int ,int,char*) ;
 int testing_noteq (int ,int ,int,char*) ;

void
test_NtGdiDdWaitForVerticalBlank(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    DDHAL_WAITFORVERTICALBLANKDATA pDdWaitForVerticalBlankData;

    RtlZeroMemory(&pDdWaitForVerticalBlankData,sizeof(DDHAL_WAITFORVERTICALBLANKDATA));

    retValue = OsThunkDdWaitForVerticalBlank(((void*)0),((void*)0));
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"1. NtGdiDdWaitForVerticalBlank(NULL,NULL);\0");

    retValue = OsThunkDdWaitForVerticalBlank(hDirectDrawLocal,((void*)0));
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"2. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");

    retValue = OsThunkDdWaitForVerticalBlank(hDirectDrawLocal,(PDD_WAITFORVERTICALBLANKDATA)&pDdWaitForVerticalBlankData);
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"3. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");
    testing_eq(pDdWaitForVerticalBlankData.ddRVal, DD_OK,fails,"4. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");

    RtlZeroMemory(&pDdWaitForVerticalBlankData,sizeof(DDHAL_WAITFORVERTICALBLANKDATA));
    pDdWaitForVerticalBlankData.dwFlags = DDWAITVB_I_TESTVB;
    retValue = OsThunkDdWaitForVerticalBlank(hDirectDrawLocal,(PDD_WAITFORVERTICALBLANKDATA)&pDdWaitForVerticalBlankData);

    testing_eq(retValue, DDHAL_DRIVER_NOTHANDLED,fails,"5. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");
    testing_noteq(pDdWaitForVerticalBlankData.ddRVal, DD_OK,fails,"6. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");

    retValue = OsThunkDdWaitForVerticalBlank(hDirectDrawLocal,(PDD_WAITFORVERTICALBLANKDATA)&pDdWaitForVerticalBlankData);

    show_status(fails, "NtGdiDdWaitForVerticalBlank\0");
}
