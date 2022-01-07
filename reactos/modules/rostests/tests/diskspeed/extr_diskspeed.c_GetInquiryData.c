
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int NumberOfBuses; TYPE_1__* BusData; } ;
struct TYPE_9__ {scalar_t__ PathId; scalar_t__ TargetId; scalar_t__ Lun; scalar_t__ NextInquiryDataOffset; int InquiryData; } ;
struct TYPE_8__ {scalar_t__ PathId; scalar_t__ TargetId; scalar_t__ Lun; } ;
struct TYPE_7__ {int InquiryDataOffset; } ;
typedef int ScsiAddress ;
typedef TYPE_2__ SCSI_ADDRESS ;
typedef TYPE_3__* PSCSI_INQUIRY_DATA ;
typedef TYPE_4__* PSCSI_ADAPTER_BUS_INFO ;
typedef int PINQUIRYDATA ;
typedef int INQUIRYDATA ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int Buffer ;
typedef TYPE_2__ BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeviceIoControl (int ,int ,int *,int ,TYPE_2__*,int,int *,scalar_t__) ;
 scalar_t__ FALSE ;
 int IOCTL_SCSI_GET_ADDRESS ;
 int IOCTL_SCSI_GET_INQUIRY_DATA ;
 scalar_t__ TRUE ;
 int memcpy (int ,int ,int) ;

BOOL GetInquiryData(HANDLE hDevice, PINQUIRYDATA InquiryData)
{
  BOOL Result;
  DWORD dwReturned;
  SCSI_ADDRESS ScsiAddress;
  PSCSI_ADAPTER_BUS_INFO AdapterInfo;
  PSCSI_INQUIRY_DATA InquiryBuffer;
  BYTE Buffer[4096];
  int i;

  Result = DeviceIoControl(hDevice,
                    IOCTL_SCSI_GET_ADDRESS,
      ((void*)0),
      0,
      &ScsiAddress,
      sizeof(ScsiAddress),
      &dwReturned,
      FALSE);
  if (Result == FALSE)
    {
      return FALSE;
    }
  Result = DeviceIoControl(hDevice,
                    IOCTL_SCSI_GET_INQUIRY_DATA,
      ((void*)0),
      0,
      Buffer,
      sizeof(Buffer),
      &dwReturned,
      FALSE);
  if (Result)
    {
      AdapterInfo = (PSCSI_ADAPTER_BUS_INFO)Buffer;
      for (i = 0; i < AdapterInfo->NumberOfBuses; i++)
 {
   InquiryBuffer = (PSCSI_INQUIRY_DATA) (Buffer + AdapterInfo->BusData[i].InquiryDataOffset);
   if (AdapterInfo->BusData[i].InquiryDataOffset)
     {
        while (1)
          {
     if (InquiryBuffer->PathId == ScsiAddress.PathId &&
         InquiryBuffer->TargetId == ScsiAddress.TargetId &&
         InquiryBuffer->Lun == ScsiAddress.Lun)
       {
         memcpy(InquiryData, InquiryBuffer->InquiryData, sizeof(INQUIRYDATA));
         return TRUE;
       }
     if (InquiryBuffer->NextInquiryDataOffset == 0)
       {
         break;
       }
     InquiryBuffer = (PSCSI_INQUIRY_DATA) (Buffer + InquiryBuffer->NextInquiryDataOffset);
   }
     }
 }
    }
  return FALSE;
}
