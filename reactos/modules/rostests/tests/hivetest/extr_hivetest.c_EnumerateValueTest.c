
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_3__ {int DataOffset; int NameLength; char** Name; char* Type; int DataLength; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef char* NTSTATUS ;
typedef int KeyValueInformation ;
typedef TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef int * HANDLE ;
typedef char* DWORD ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KeyValueFullInformation ;
 int MAXIMUM_ALLOWED ;
 int NT_SUCCESS (char*) ;
 char* NtClose (int *) ;
 char* NtEnumerateValueKey (int *,int ,int ,TYPE_1__*,int,int*) ;
 char* NtOpenKey (int **,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 scalar_t__ REG_DWORD ;
 scalar_t__ REG_SZ ;
 int RTL_CONSTANT_STRING (char*) ;
 char* STATUS_SUCCESS ;
 int dprintf (char*,...) ;

void EnumerateValueTest(void)
{
  KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software\\testkey");
  ULONG Index,Length,i;
  HANDLE hKey = ((void*)0);
  NTSTATUS Status;

  dprintf("Open key '\\Registry\\Machine\\Software\\testkey':\n");

  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE,
        ((void*)0),
        ((void*)0));
  Status=NtOpenKey(&hKey,
     MAXIMUM_ALLOWED,
     &ObjectAttributes);
  dprintf("  Status = %lx\n", Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("Enumerate values:\n");
  Index = 0;
  while (Status == STATUS_SUCCESS)
    {
      Status = NtEnumerateValueKey(hKey,
       Index++,
       KeyValueFullInformation,
       &KeyValueInformation[0],
       sizeof(KeyValueInformation),
       &Length);
      if (Status == STATUS_SUCCESS)
 {
   dprintf("    Value:DO=%d, DL=%d, NL=%d, Name = ",
    KeyValueInformation[0].DataOffset,
    KeyValueInformation[0].DataLength,
    KeyValueInformation[0].NameLength);
   for (i = 0; i < KeyValueInformation[0].NameLength / 2; i++)
     dprintf("%C", KeyValueInformation[0].Name[i]);
   dprintf(", Type = %d\n", KeyValueInformation[0].Type);

   if (KeyValueInformation[0].Type == REG_SZ)
     dprintf("    Value = %S\n",
      ((char*)&KeyValueInformation[0]+KeyValueInformation[0].DataOffset));

   if (KeyValueInformation[0].Type == REG_DWORD)
     dprintf("    Value = %X\n",
      *((DWORD*)((char*)&KeyValueInformation[0]+KeyValueInformation[0].DataOffset)));
 }
    }

  dprintf("NtClose:\n");
  Status = NtClose(hKey);
  dprintf("  Status = %lx\n", Status);
}
