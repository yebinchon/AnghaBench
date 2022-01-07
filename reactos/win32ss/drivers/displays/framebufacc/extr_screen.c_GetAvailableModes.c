
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ModeInformationLength; int NumModes; int NumberOfPlanes; int AttributeFlags; int BitsPerPlane; scalar_t__ Length; } ;
typedef TYPE_1__ VIDEO_NUM_MODES ;
typedef int ULONG ;
typedef TYPE_1__* PVIDEO_MODE_INFORMATION ;
typedef scalar_t__ PUCHAR ;
typedef int HANDLE ;
typedef int DWORD ;


 int ALLOC_TAG ;
 scalar_t__ EngAllocMem (int ,int,int ) ;
 scalar_t__ EngDeviceIoControl (int ,int ,int *,int ,TYPE_1__*,int,int*) ;
 int EngFreeMem (TYPE_1__*) ;
 int IOCTL_VIDEO_QUERY_AVAIL_MODES ;
 int IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES ;
 int VIDEO_MODE_GRAPHICS ;

DWORD
GetAvailableModes(
   HANDLE hDriver,
   PVIDEO_MODE_INFORMATION *ModeInfo,
   DWORD *ModeInfoSize)
{
   ULONG ulTemp;
   VIDEO_NUM_MODES Modes;
   PVIDEO_MODE_INFORMATION ModeInfoPtr;





   if (EngDeviceIoControl(hDriver, IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES, ((void*)0),
                          0, &Modes, sizeof(VIDEO_NUM_MODES), &ulTemp))
   {
      return 0;
   }

   *ModeInfoSize = Modes.ModeInformationLength;





   *ModeInfo = (PVIDEO_MODE_INFORMATION)EngAllocMem(0, Modes.NumModes *
      Modes.ModeInformationLength, ALLOC_TAG);

   if (*ModeInfo == ((void*)0))
   {
      return 0;
   }





   if (EngDeviceIoControl(hDriver, IOCTL_VIDEO_QUERY_AVAIL_MODES, ((void*)0), 0,
                          *ModeInfo, Modes.NumModes * Modes.ModeInformationLength,
                          &ulTemp))
   {
      EngFreeMem(*ModeInfo);
      *ModeInfo = (PVIDEO_MODE_INFORMATION)((void*)0);
      return 0;
   }







   ulTemp = Modes.NumModes;
   ModeInfoPtr = *ModeInfo;






   while (ulTemp--)
   {

      if ((ModeInfoPtr->NumberOfPlanes != 1) ||
          !(ModeInfoPtr->AttributeFlags & VIDEO_MODE_GRAPHICS) ||
          ((ModeInfoPtr->BitsPerPlane != 8) &&
           (ModeInfoPtr->BitsPerPlane != 16) &&
           (ModeInfoPtr->BitsPerPlane != 24) &&
           (ModeInfoPtr->BitsPerPlane != 32)))
      {
         ModeInfoPtr->Length = 0;
      }

      ModeInfoPtr = (PVIDEO_MODE_INFORMATION)
         (((PUCHAR)ModeInfoPtr) + Modes.ModeInformationLength);
   }

   return Modes.NumModes;
}
