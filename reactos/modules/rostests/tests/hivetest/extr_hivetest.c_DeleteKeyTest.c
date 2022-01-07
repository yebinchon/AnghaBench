
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KEY_ALL_ACCESS ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtDeleteKey (int ) ;
 int NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RTL_CONSTANT_STRING (char*) ;
 int dprintf (char*,...) ;

void DeleteKeyTest(void)
{
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software\\testkey");
  HANDLE hKey;
  NTSTATUS Status;

  dprintf("Delete key '\\Registry\\Machine\\Software\\testkey':\n");

  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE,
        ((void*)0),
        ((void*)0));
  dprintf("NtOpenKey:\n");
  Status = NtOpenKey(&hKey,
       KEY_ALL_ACCESS,
       &ObjectAttributes);
  dprintf("  Status = %lx\n",Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("NtDeleteKey:\n");
  Status = NtDeleteKey(hKey);
  dprintf("  Status = %lx\n",Status);
  NtClose(hKey);
}
