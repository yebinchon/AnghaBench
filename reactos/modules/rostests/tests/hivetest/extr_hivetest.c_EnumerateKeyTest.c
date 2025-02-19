
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_4__ {int NameLength; int * Name; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int KeyInformation ;
typedef TYPE_1__ KEY_BASIC_INFORMATION ;
typedef int * HANDLE ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KEY_ALL_ACCESS ;
 int KeyBasicInformation ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtClose (int *) ;
 int NtEnumerateKey (int *,int,int ,TYPE_1__*,int,int*) ;
 int NtOpenKey (int **,int ,int *) ;
 int NtQueryKey (int *,int ,TYPE_1__*,int,int*) ;
 int OBJ_CASE_INSENSITIVE ;
 int RTL_CONSTANT_STRING (char*) ;
 int dprintf (char*,...) ;

void EnumerateKeyTest(void)
{
  HANDLE hKey = ((void*)0);
  OBJECT_ATTRIBUTES ObjectAttributes;
  NTSTATUS Status;
  UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software");
  ULONG Index;
  ULONG Length;
  ULONG i;
  KEY_BASIC_INFORMATION KeyInformation[5];

  dprintf("Enumerate key '\\Registry\\Machine\\Software':\n");

  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE,
        ((void*)0),
        ((void*)0));
  dprintf("NtOpenKey:\n");
  Status = NtOpenKey(&hKey,
       KEY_ALL_ACCESS,
       &ObjectAttributes);
  dprintf("  Status = %lx\n", Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("NtQueryKey:\n");
  Status = NtQueryKey(hKey,
        KeyBasicInformation,
        &KeyInformation[0],
        sizeof(KeyInformation),
        &Length);
  dprintf("  Status = %lx\n", Status);
  if (NT_SUCCESS(Status))
    {
      dprintf("\tKey Name = ");
      for (i = 0; i < KeyInformation[0].NameLength / 2; i++)
 dprintf("%C", KeyInformation[0].Name[i]);
      dprintf("\n");
    }

  dprintf("NtEnumerateKey:\n");
  Index=0;
  while(NT_SUCCESS(Status))
    {
      Status = NtEnumerateKey(hKey,
         Index,
         KeyBasicInformation,
         &KeyInformation[0],
         sizeof(KeyInformation),
         &Length);
      if (NT_SUCCESS(Status))
 {
   dprintf("\tSubKey Name = ");
   for (i = 0; i < KeyInformation[0].NameLength / 2; i++)
     dprintf("%C", KeyInformation[0].Name[i]);
   dprintf("\n");
 }
      Index++;
    }

  dprintf("NtClose:\n");
  Status = NtClose(hKey);
  dprintf("  Status = %lx\n", Status);
}
