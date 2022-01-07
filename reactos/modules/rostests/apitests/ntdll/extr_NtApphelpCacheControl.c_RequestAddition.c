
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVICE_STATUS ;
typedef int SC_HANDLE ;
typedef scalar_t__ BOOLEAN ;


 int ControlService (int ,int ,int *) ;
 int RegisterShimCacheWithHandle ;
 int RegisterShimCacheWithoutHandle ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOLEAN RequestAddition(SC_HANDLE service_handle, BOOLEAN WithMapping)
{
    SERVICE_STATUS Status;
    ControlService(service_handle, WithMapping ? RegisterShimCacheWithHandle :
                    RegisterShimCacheWithoutHandle, &Status);

    return TRUE;
}
