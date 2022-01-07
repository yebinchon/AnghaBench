
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef scalar_t__ MIXER_STATUS ;
typedef scalar_t__ HDEVINFO ;
typedef scalar_t__ BOOL ;


 int CategoryGuid ;
 int DIGCF_DEVICEINTERFACE ;
 int DPRINT1 (char*,scalar_t__) ;
 int Enum ;
 scalar_t__ FALSE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ MM_STATUS_SUCCESS ;
 scalar_t__ MMixerInitialize (int *,int ,int ) ;
 scalar_t__ MMixerLibraryInitialized ;
 int MixerContext ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 scalar_t__ SetupDiGetClassDevs (int *,int *,int *,int ) ;
 scalar_t__ TRUE ;

BOOL
WdmAudInitUserModeMixer()
{
    HDEVINFO DeviceHandle;
    MIXER_STATUS Status;

    if (MMixerLibraryInitialized)
    {

        return TRUE;
    }



    DeviceHandle = SetupDiGetClassDevs(&CategoryGuid,
                                       ((void*)0),
                                       ((void*)0),
                                       DIGCF_DEVICEINTERFACE );

    if (DeviceHandle == INVALID_HANDLE_VALUE)
    {

        return FALSE;
    }



    Status = MMixerInitialize(&MixerContext, Enum, (PVOID)DeviceHandle);


    SetupDiDestroyDeviceInfoList(DeviceHandle);

    if (Status != MM_STATUS_SUCCESS)
    {

        DPRINT1("Failed to initialize mixer library with %x\n", Status);
        return FALSE;
    }


    MMixerLibraryInitialized = TRUE;


    return TRUE;
}
