
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HKEY ;


 int InitializeObjectAttributes (int *,int *,int,int *,int *) ;
 int KEY_ALL_ACCESS ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtCreateKey (int *,int ,int *,int ,int *,int,int *) ;
 int NtDeleteKey (int ) ;
 int NtDeleteValueKey (int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_OPENIF ;
 int OBJ_OPENLINK ;
 int REG_OPTION_OPEN_LINK ;
 int REG_OPTION_VOLATILE ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 int dprintf (char*,...) ;

void test7(void)
{
  HKEY hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName,ValueName;
  NTSTATUS Status;

  dprintf("Open link key\n");
  dprintf("  Key: \\Registry\\Machine\\SOFTWARE\\Test\n");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Test");
  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE | OBJ_OPENIF | OBJ_OPENLINK,
        ((void*)0),
        ((void*)0));
  Status = NtCreateKey(&hKey,
         KEY_ALL_ACCESS,
         &ObjectAttributes,
         0,
         ((void*)0),
         REG_OPTION_VOLATILE | REG_OPTION_OPEN_LINK,
         ((void*)0));
  dprintf("  NtCreateKey() called (Status %lx)\n",Status);
  if (!NT_SUCCESS(Status))
    {
      dprintf("Could not open the link key. Please run the link create test first!\n");
      return;
    }

  dprintf("Delete link value\n");
  RtlRosInitUnicodeStringFromLiteral(&ValueName, L"SymbolicLinkValue");
  Status = NtDeleteValueKey(hKey,
       &ValueName);
  dprintf("  NtDeleteValueKey() called (Status %lx)\n",Status);

  dprintf("Delete link key\n");
  Status=NtDeleteKey(hKey);
  dprintf("  NtDeleteKey() called (Status %lx)\n",Status);

  dprintf("Close link key\n");
  NtClose(hKey);
}
