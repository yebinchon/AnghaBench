
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PVOID ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int InitializeObjectAttributes (int *,int *,int,int *,int *) ;
 int KEY_ALL_ACCESS ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtCreateKey (int *,int ,int *,int ,int *,int ,int *) ;
 int NtSetValueKey (int ,int *,int ,int ,int ,int) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_OPENIF ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RTL_CONSTANT_STRING (char*) ;
 int dprintf (char*,...) ;

void SetValueTest1(void)
{
  HANDLE hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software\\testkey");
  UNICODE_STRING ValueName = RTL_CONSTANT_STRING(L"TestValue");
  NTSTATUS Status;

  dprintf("Create key '\\Registry\\Machine\\Software\\testkey':\n");

  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE | OBJ_OPENIF,
        ((void*)0),
        ((void*)0));
  dprintf("NtCreateKey:\n");
  Status = NtCreateKey(&hKey,
         KEY_ALL_ACCESS,
         &ObjectAttributes,
         0,
         ((void*)0),
         REG_OPTION_NON_VOLATILE,
         ((void*)0));
  dprintf("  Status = %lx\n",Status);
  if (!NT_SUCCESS(Status))
    return;


  dprintf("NtSetValueKey:\n");
  Status = NtSetValueKey(hKey,
    &ValueName,
    0,
    REG_SZ,
    (PVOID)L"TestString",
    24);
  dprintf("  Status = %lx\n",Status);

  NtClose(hKey);
}
