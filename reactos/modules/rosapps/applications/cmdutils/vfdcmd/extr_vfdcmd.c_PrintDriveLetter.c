
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int HANDLE ;
typedef int CHAR ;


 scalar_t__ ERROR_SUCCESS ;
 int MSG_DRIVE_LETTER ;
 int MSG_EPHEMERAL ;
 int MSG_PERSISTENT ;
 int PrintMessage (int ,int ) ;
 int VfdGetGlobalLink (int ,int *) ;
 scalar_t__ VfdGetLocalLink (int ,int *) ;
 scalar_t__ isalpha (int ) ;
 int printf (char*) ;
 int toupper (int ) ;

void PrintDriveLetter(
 HANDLE hDevice,
 ULONG nDrive)
{
 CHAR letter;

 PrintMessage(MSG_DRIVE_LETTER, nDrive);

 VfdGetGlobalLink(hDevice, &letter);

 if (isalpha(letter)) {
  PrintMessage(MSG_PERSISTENT, toupper(letter));
 }

 while (VfdGetLocalLink(hDevice, &letter) == ERROR_SUCCESS &&
  isalpha(letter)) {
  PrintMessage(MSG_EPHEMERAL, toupper(letter));
 }

 printf("\n");
}
