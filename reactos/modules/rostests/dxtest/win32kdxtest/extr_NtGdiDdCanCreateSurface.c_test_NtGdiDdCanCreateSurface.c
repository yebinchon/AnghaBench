
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; int * lpDDSurfaceDesc; } ;
typedef int * PDD_CANCREATESURFACEDATA ;
typedef int * HANDLE ;
typedef TYPE_1__ DDSURFACEDESC2 ;
typedef int DDSURFACEDESC ;
typedef TYPE_1__ DDHAL_CANCREATESURFACEDATA ;
typedef int BOOL ;


 int DDHAL_DRIVER_HANDLED ;
 int FALSE ;
 int OsThunkDdCanCreateSurface (int *,int *) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int testing_eq (int ,int ,int,char*) ;

void
test_NtGdiDdCanCreateSurface(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    DDHAL_CANCREATESURFACEDATA pCanCreateSurface;
    DDSURFACEDESC2 desc;

    RtlZeroMemory(&pCanCreateSurface,sizeof(DDHAL_CANCREATESURFACEDATA));
    RtlZeroMemory(&desc,sizeof(DDSURFACEDESC2));


    retValue = OsThunkDdCanCreateSurface(((void*)0),((void*)0));
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"1. NtGdiDdCanCreateSurface(NULL,NULL);\0");

    retValue = OsThunkDdCanCreateSurface(hDirectDrawLocal,((void*)0));
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"2. NtGdiDdCanCreateSurface(hDirectDrawLocal,NULL);\0");

    retValue = OsThunkDdCanCreateSurface(hDirectDrawLocal,(PDD_CANCREATESURFACEDATA)&pCanCreateSurface);
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"3. NtGdiDdCanCreateSurface(hDirectDrawLocal,pCanCreateSurface);\0");

    pCanCreateSurface.lpDDSurfaceDesc = (DDSURFACEDESC*)&desc;
    desc.dwSize = sizeof(DDSURFACEDESC2);

    retValue = OsThunkDdCanCreateSurface(hDirectDrawLocal,(PDD_CANCREATESURFACEDATA)&pCanCreateSurface);
    testing_eq(retValue, DDHAL_DRIVER_HANDLED,fails,"4. NtGdiDdCanCreateSurface(hDirectDrawLocal,pCanCreateSurface);\0");

}
