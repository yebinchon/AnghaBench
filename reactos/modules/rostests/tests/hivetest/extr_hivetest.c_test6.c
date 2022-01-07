
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Type; int NameLength; int * Name; int DataLength; } ;
typedef int PVOID ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int KeyValueInformation ;
typedef TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef int HANDLE ;


 int InitializeObjectAttributes (int *,int *,int,int *,int *) ;
 int KEY_ALL_ACCESS ;
 int KEY_CREATE_LINK ;
 int KeyValueFullInformation ;
 int NT_SUCCESS (scalar_t__) ;
 int NtClose (int ) ;
 scalar_t__ NtCreateKey (int *,int,int *,int ,int *,int,int *) ;
 scalar_t__ NtQueryValueKey (int ,int *,int ,TYPE_1__*,int,int*) ;
 scalar_t__ NtSetValueKey (int ,int *,int ,scalar_t__,int ,int) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_OPENIF ;
 int OBJ_OPENLINK ;
 scalar_t__ REG_LINK ;
 int REG_OPTION_CREATE_LINK ;
 int REG_OPTION_VOLATILE ;
 scalar_t__ REG_SZ ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 scalar_t__ STATUS_SUCCESS ;
 int dprintf (char*,...) ;

void test6(void)
{
  HANDLE hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName,ValueName;
  NTSTATUS Status;
  KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];
  ULONG Length,i;

  dprintf("Create target key\n");
  dprintf("  Key: \\Registry\\Machine\\SOFTWARE\\Reactos\n");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Reactos");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status = NtCreateKey(&hKey, KEY_ALL_ACCESS , &ObjectAttributes
  ,0,((void*)0), REG_OPTION_VOLATILE,((void*)0));
  dprintf("  NtCreateKey() called (Status %lx)\n",Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("Create target value\n");
  dprintf("  Value: TestValue = 'Test String'\n");
  RtlRosInitUnicodeStringFromLiteral(&ValueName, L"TestValue");
  Status=NtSetValueKey(hKey,&ValueName,0,REG_SZ,(PVOID)L"TestString",22);
  dprintf("  NtSetValueKey() called (Status %lx)\n",Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("Close target key\n");
  NtClose(hKey);


  dprintf("Create link key\n");
  dprintf("  Key: \\Registry\\Machine\\SOFTWARE\\Test\n");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Test");
  InitializeObjectAttributes(&ObjectAttributes,
        &KeyName,
        OBJ_CASE_INSENSITIVE | OBJ_OPENLINK,
        ((void*)0),
        ((void*)0));
  Status = NtCreateKey(&hKey,
         KEY_ALL_ACCESS | KEY_CREATE_LINK,
         &ObjectAttributes,
         0,
         ((void*)0),
         REG_OPTION_VOLATILE | REG_OPTION_CREATE_LINK,
         ((void*)0));
  dprintf("  NtCreateKey() called (Status %lx)\n",Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("Create link value\n");
  dprintf("  Value: SymbolicLinkValue = '\\Registry\\Machine\\SOFTWARE\\Reactos'\n");
  RtlRosInitUnicodeStringFromLiteral(&ValueName, L"SymbolicLinkValue");
  Status=NtSetValueKey(hKey,&ValueName,0,REG_LINK,(PVOID)L"\\Registry\\Machine\\SOFTWARE\\Reactos",68);
  dprintf("  NtSetValueKey() called (Status %lx)\n",Status);
  if (!NT_SUCCESS(Status))
    {
      dprintf("Creating link value failed! Test failed!\n");
      NtClose(hKey);
      return;
    }

  dprintf("Close link key\n");
  NtClose(hKey);

  dprintf("Open link key\n");
  dprintf("  Key: \\Registry\\Machine\\SOFTWARE\\Test\n");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Test");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE | OBJ_OPENIF
    , ((void*)0), ((void*)0));
  Status = NtCreateKey(&hKey, KEY_ALL_ACCESS , &ObjectAttributes
  ,0,((void*)0), REG_OPTION_VOLATILE, ((void*)0));
  dprintf("  NtCreateKey() called (Status %lx)\n",Status);
  if (!NT_SUCCESS(Status))
    return;

  dprintf("Query value\n");
  dprintf("  Value: TestValue\n");
  RtlRosInitUnicodeStringFromLiteral(&ValueName, L"TestValue");
  Status=NtQueryValueKey(hKey,
    &ValueName,
    KeyValueFullInformation,
    &KeyValueInformation[0],
    sizeof(KeyValueInformation),
    &Length);
  dprintf("  NtQueryValueKey() called (Status %lx)\n",Status);
  if (Status == STATUS_SUCCESS)
    {
      dprintf("  Value: Type %d  DataLength %d NameLength %d  Name '",
       KeyValueInformation[0].Type,
       KeyValueInformation[0].DataLength,
       KeyValueInformation[0].NameLength);
      for (i=0; i < KeyValueInformation[0].NameLength / sizeof(WCHAR); i++)
 dprintf("%C",KeyValueInformation[0].Name[i]);
      dprintf("'\n");
      if (KeyValueInformation[0].Type == REG_SZ)
 dprintf("  Value '%S'\n",
  KeyValueInformation[0].Name+1
  +KeyValueInformation[0].NameLength/2);
    }

  dprintf("Close link key\n");
  NtClose(hKey);

  dprintf("Test successful!\n");
}
