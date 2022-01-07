
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIXER_STATUS ;
typedef int HANDLE ;


 scalar_t__ CloseHandle (int ) ;
 int MM_STATUS_SUCCESS ;
 int MM_STATUS_UNSUCCESSFUL ;

MIXER_STATUS
Close(HANDLE hDevice)
{
    if (CloseHandle(hDevice))
        return MM_STATUS_SUCCESS;
    else
        return MM_STATUS_UNSUCCESSFUL;
}
