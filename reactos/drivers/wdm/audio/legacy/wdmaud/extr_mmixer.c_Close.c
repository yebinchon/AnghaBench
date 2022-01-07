
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIXER_STATUS ;
typedef int HANDLE ;


 int MM_STATUS_SUCCESS ;
 int MM_STATUS_UNSUCCESSFUL ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ ZwClose (int ) ;

MIXER_STATUS
Close(HANDLE hDevice)
{
    if (ZwClose(hDevice) == STATUS_SUCCESS)
        return MM_STATUS_SUCCESS;
    else
        return MM_STATUS_UNSUCCESSFUL;
}
