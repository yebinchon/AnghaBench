
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
 scalar_t__ NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtCreateKey (int *,int ,int *,int ,int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int REG_OPTION_NON_VOLATILE ;
 int RTL_CONSTANT_STRING (char*) ;
 int dprintf (char*,...) ;

void CreateKeyTest(void)
{
  HANDLE hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  NTSTATUS Status;
  UNICODE_STRING KeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\Software\\testkey");

  dprintf("Create key '\\Registry\\Machine\\Software\\testkey':\n");

  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE,
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
  if (NT_SUCCESS(Status))
    {
      NtClose(hKey);
    }
}
