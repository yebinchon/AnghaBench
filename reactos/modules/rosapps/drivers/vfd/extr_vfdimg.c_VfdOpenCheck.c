
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VFD_IMAGE_INFO ;
typedef int ULONG ;
struct TYPE_10__ {int * SecurityContext; scalar_t__ FileBuffer; scalar_t__ FileHandle; } ;
struct TYPE_9__ {int NameLength; scalar_t__ MediaType; scalar_t__ DiskType; } ;
struct TYPE_8__ {int Length; int EffectiveOnly; int ContextTrackingMode; int ImpersonationLevel; } ;
typedef TYPE_1__ SECURITY_QUALITY_OF_SERVICE ;
typedef int SECURITY_CLIENT_CONTEXT ;
typedef TYPE_2__* PVFD_IMAGE_INFO ;
typedef int * PSECURITY_CLIENT_CONTEXT ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 scalar_t__ ExAllocatePoolWithTag (int ,int,int ) ;
 int FALSE ;
 int NonPagedPool ;
 int PsGetCurrentThread () ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int SECURITY_STATIC_TRACKING ;
 int STATUS_DEVICE_BUSY ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int SeCreateClientSecurity (int ,TYPE_1__*,int ,int *) ;
 int SeDeleteClientSecurity (int *) ;
 int SecurityImpersonation ;
 int VFDTRACE (int ,char*) ;
 int VFDWARN ;
 scalar_t__ VFD_DISKTYPE_FILE ;
 scalar_t__ VFD_MEDIA_MAX ;
 scalar_t__ VFD_MEDIA_NONE ;
 int VFD_POOL_TAG ;

NTSTATUS
VfdOpenCheck(
 PDEVICE_EXTENSION DeviceExtension,
 PVFD_IMAGE_INFO ImageInfo,
 ULONG InputLength)
{


 if (DeviceExtension->FileHandle ||
  DeviceExtension->FileBuffer) {

  VFDTRACE(VFDWARN, ("[VFD] image already opened.\n"));

  return STATUS_DEVICE_BUSY;
 }



 if (InputLength < sizeof(VFD_IMAGE_INFO) ||
  InputLength < sizeof(VFD_IMAGE_INFO) + ImageInfo->NameLength)
 {
  return STATUS_INVALID_PARAMETER;
 }



 if (ImageInfo->MediaType == VFD_MEDIA_NONE ||
  ImageInfo->MediaType >= VFD_MEDIA_MAX) {

  VFDTRACE(VFDWARN, ("[VFD] invalid MediaType - %u.\n",
   ImageInfo->MediaType));

  return STATUS_INVALID_PARAMETER;
 }

 if (ImageInfo->DiskType == VFD_DISKTYPE_FILE &&
  ImageInfo->NameLength == 0) {

  VFDTRACE(VFDWARN,
   ("[VFD] File name required for VFD_DISKTYPE_FILE.\n"));

  return STATUS_INVALID_PARAMETER;
 }






 {
  SECURITY_QUALITY_OF_SERVICE sqos;

  if (DeviceExtension->SecurityContext != ((void*)0)) {
   SeDeleteClientSecurity(DeviceExtension->SecurityContext);
  }
  else {
   DeviceExtension->SecurityContext =
    (PSECURITY_CLIENT_CONTEXT)ExAllocatePoolWithTag(
    NonPagedPool, sizeof(SECURITY_CLIENT_CONTEXT), VFD_POOL_TAG);
  }

  RtlZeroMemory(&sqos, sizeof(SECURITY_QUALITY_OF_SERVICE));

  sqos.Length = sizeof(SECURITY_QUALITY_OF_SERVICE);
  sqos.ImpersonationLevel = SecurityImpersonation;
  sqos.ContextTrackingMode = SECURITY_STATIC_TRACKING;
  sqos.EffectiveOnly = FALSE;

  SeCreateClientSecurity(
   PsGetCurrentThread(), &sqos, FALSE,
   DeviceExtension->SecurityContext);
 }

 return STATUS_SUCCESS;
}
