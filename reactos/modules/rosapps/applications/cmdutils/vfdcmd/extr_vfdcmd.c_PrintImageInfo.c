
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_desc ;
typedef scalar_t__ VFD_MEDIA ;
typedef int VFD_FLAGS ;
typedef int VFD_FILETYPE ;
typedef scalar_t__ VFD_DISKTYPE ;
typedef scalar_t__ ULONG ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ CHAR ;


 scalar_t__ ERROR_SUCCESS ;
 int GetFileAttributes (scalar_t__*) ;
 int MAX_PATH ;
 int MSG_DISKTYPE_FILE ;
 int MSG_DISKTYPE_RAM_CLEAN ;
 int MSG_DISKTYPE_RAM_DIRTY ;
 int MSG_FILE_DESC ;
 int MSG_GET_FILE_NG ;
 int MSG_GET_LINK_NG ;
 int MSG_IMAGE_NAME ;
 int MSG_IMAGE_NONE ;
 int MSG_MEDIA_PROTECTED ;
 int MSG_MEDIA_TYPE ;
 int MSG_MEDIA_WRITABLE ;
 int PrintDriveLetter (int ,scalar_t__) ;
 int PrintMessage (int ,...) ;
 char* SystemError (scalar_t__) ;
 scalar_t__ VFD_DISKTYPE_FILE ;
 int VFD_FILETYPE_NONE ;
 int VFD_FLAG_DATA_MODIFIED ;
 int VFD_FLAG_WRITE_PROTECTED ;
 scalar_t__ VFD_MEDIA_NONE ;
 scalar_t__ VfdGetDeviceNumber (int ,scalar_t__*) ;
 scalar_t__ VfdGetImageInfo (int ,scalar_t__*,scalar_t__*,scalar_t__*,int*,int *,scalar_t__*) ;
 int VfdMakeFileDesc (scalar_t__*,int,int ,scalar_t__,int ) ;
 int VfdMediaTypeName (scalar_t__) ;
 int printf (char*,...) ;

void PrintImageInfo(
 HANDLE hDevice)
{
 ULONG device_number;
 CHAR file_name[MAX_PATH];
 CHAR file_desc[MAX_PATH];
 VFD_DISKTYPE disk_type;
 VFD_MEDIA media_type;
 VFD_FLAGS media_flags;
 VFD_FILETYPE file_type;
 ULONG image_size;
 DWORD ret;

 printf("\n");



 ret = VfdGetDeviceNumber(hDevice, &device_number);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_GET_LINK_NG);
  printf("%s", SystemError(ret));
  device_number = (ULONG)-1;
 }



 PrintDriveLetter(hDevice, device_number);



 ret = VfdGetImageInfo(hDevice, file_name, &disk_type,
  &media_type, &media_flags, &file_type, &image_size);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_GET_FILE_NG);
  printf("%s", SystemError(ret));
  return;
 }


 if (media_type == VFD_MEDIA_NONE) {
  PrintMessage(MSG_IMAGE_NONE);
  return;
 }

 if (file_name[0]) {
  PrintMessage(MSG_IMAGE_NAME, file_name);

  VfdMakeFileDesc(file_desc, sizeof(file_desc),
   file_type, image_size, GetFileAttributes(file_name));
 }
 else {
  PrintMessage(MSG_IMAGE_NAME, "<RAM>");

  VfdMakeFileDesc(file_desc, sizeof(file_desc),
   VFD_FILETYPE_NONE, image_size, 0);
 }

 PrintMessage(MSG_FILE_DESC, file_desc);

 if (disk_type == VFD_DISKTYPE_FILE) {
  PrintMessage(MSG_DISKTYPE_FILE);
 }
 else {
  if (media_flags & VFD_FLAG_DATA_MODIFIED) {
   PrintMessage(MSG_DISKTYPE_RAM_DIRTY);
  }
  else {
   PrintMessage(MSG_DISKTYPE_RAM_CLEAN);
  }
 }



 PrintMessage(MSG_MEDIA_TYPE, VfdMediaTypeName(media_type));

 if (media_flags & VFD_FLAG_WRITE_PROTECTED) {
  PrintMessage(MSG_MEDIA_PROTECTED);
 }
 else {
  PrintMessage(MSG_MEDIA_WRITABLE);
 }
}
