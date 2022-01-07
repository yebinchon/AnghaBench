
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MAXIMUM_ALLOWED ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtDeleteValueKey (int ,int *) ;
 int NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RTL_CONSTANT_STRING (char*) ;
 int dprintf (char*,...) ;

void DeleteValueTest(void)
{
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software\\testkey");
  UNICODE_STRING ValueName = RTL_CONSTANT_STRING(L"TestValue");
  HANDLE KeyHandle;
  NTSTATUS Status;

  dprintf("Open key '\\Registry\\Machine\\Software\\testkey':\n");

  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE,
        ((void*)0),
        ((void*)0));
  Status=NtOpenKey(&KeyHandle,
     MAXIMUM_ALLOWED,
     &ObjectAttributes);
  dprintf("  Status = %lx\n", Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("Delete value:\n");


  Status = NtDeleteValueKey(KeyHandle,
       &ValueName);
  dprintf("  Status = %lx\n", Status);

  dprintf("Close key:\n");
  Status = NtClose(KeyHandle);
  dprintf("  Status = %lx\n", Status);
}
