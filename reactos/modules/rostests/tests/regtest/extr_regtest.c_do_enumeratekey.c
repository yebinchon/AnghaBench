
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_3__ {int NameLength; int * Name; } ;
typedef int PWSTR ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int KeyInformation ;
typedef TYPE_1__ KEY_BASIC_INFORMATION ;
typedef int HANDLE ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KeyBasicInformation ;
 int MAXIMUM_ALLOWED ;
 int NtClose (int ) ;
 scalar_t__ NtEnumerateKey (int ,int ,int ,TYPE_1__*,int,int*) ;
 scalar_t__ NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,int ) ;
 scalar_t__ STATUS_SUCCESS ;
 int dprintf (char*,...) ;

void do_enumeratekey(PWSTR Name)
{
 ULONG Index,Length,i;
 KEY_BASIC_INFORMATION KeyInformation[5];
 NTSTATUS Status;
 OBJECT_ATTRIBUTES ObjectAttributes;
 HANDLE hKey1;
 UNICODE_STRING KeyName;

  RtlInitUnicodeString(&KeyName, Name);
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status=NtOpenKey( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
    dprintf("NtEnumerateKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=NtEnumerateKey(hKey1,Index++,KeyBasicInformation
  ,&KeyInformation[0], sizeof(KeyInformation)
  ,&Length);
      if(Status== STATUS_SUCCESS)
 {
        dprintf("\tSubKey Name = ");
   for (i=0;i<KeyInformation[0].NameLength/2;i++)
  dprintf("%C",KeyInformation[0].Name[i]);
        dprintf("\n");
 }
    }
  NtClose(hKey1);
}
