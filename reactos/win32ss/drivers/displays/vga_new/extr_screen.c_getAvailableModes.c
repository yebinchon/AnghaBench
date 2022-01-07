
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ModeInformationLength; int NumModes; int NumberOfPlanes; int AttributeFlags; int BitsPerPlane; int VisScreenWidth; scalar_t__ Length; } ;
typedef TYPE_1__ VIDEO_NUM_MODES ;
typedef int ULONG ;
typedef TYPE_1__* PVIDEO_MODE_INFORMATION ;
typedef scalar_t__ PUCHAR ;
typedef int HANDLE ;
typedef int DWORD ;


 int ALLOC_TAG ;
 int DISPDBG (int ) ;
 scalar_t__ EngAllocMem (int ,int,int ) ;
 scalar_t__ EngDeviceIoControl (int ,int ,int *,int ,TYPE_1__*,int,int*) ;
 int EngFreeMem (TYPE_1__*) ;
 int IOCTL_VIDEO_QUERY_AVAIL_MODES ;
 int IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES ;
 int VIDEO_MODE_GRAPHICS ;

DWORD getAvailableModes(
HANDLE hDriver,
PVIDEO_MODE_INFORMATION *modeInformation,
DWORD *cbModeSize)
{
    ULONG ulTemp;
    VIDEO_NUM_MODES modes;
    PVIDEO_MODE_INFORMATION pVideoTemp;





    if (EngDeviceIoControl(hDriver,
                           IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES,
                           ((void*)0),
                           0,
                           &modes,
                           sizeof(VIDEO_NUM_MODES),
                           &ulTemp))
    {
        DISPDBG((0, "getAvailableModes failed VIDEO_QUERY_NUM_AVAIL_MODES\n"));
        return(0);
    }

    *cbModeSize = modes.ModeInformationLength;





    *modeInformation = (PVIDEO_MODE_INFORMATION)
                        EngAllocMem(0, modes.NumModes *
                                    modes.ModeInformationLength, ALLOC_TAG);

    if (*modeInformation == (PVIDEO_MODE_INFORMATION) ((void*)0))
    {
        DISPDBG((0, "getAvailableModes failed EngAllocMem\n"));

        return 0;
    }





    if (EngDeviceIoControl(hDriver,
                           IOCTL_VIDEO_QUERY_AVAIL_MODES,
                           ((void*)0),
                           0,
                           *modeInformation,
                           modes.NumModes * modes.ModeInformationLength,
                           &ulTemp))
    {

        DISPDBG((0, "getAvailableModes failed VIDEO_QUERY_AVAIL_MODES\n"));

        EngFreeMem(*modeInformation);
        *modeInformation = (PVIDEO_MODE_INFORMATION) ((void*)0);

        return(0);
    }







    ulTemp = modes.NumModes;
    pVideoTemp = *modeInformation;







    while (ulTemp--)
    {
        if ((pVideoTemp->NumberOfPlanes != 4 ) ||
            !(pVideoTemp->AttributeFlags & VIDEO_MODE_GRAPHICS) ||
            ((pVideoTemp->BitsPerPlane != 1) ||
             (pVideoTemp->VisScreenWidth > 800)))

        {
            pVideoTemp->Length = 0;
        }

        pVideoTemp = (PVIDEO_MODE_INFORMATION)
            (((PUCHAR)pVideoTemp) + modes.ModeInformationLength);
    }

    return modes.NumModes;

}
