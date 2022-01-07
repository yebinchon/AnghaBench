
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_3__ {int DataOffset; int NameLength; char** Name; char* Type; int DataLength; } ;
typedef int PVOID ;
typedef int OBJECT_ATTRIBUTES ;
typedef char* NTSTATUS ;
typedef int KeyValueInformation ;
typedef TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef int * HKEY ;
typedef int DWORD ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int InputHandle ;
 int KEY_ALL_ACCESS ;
 int KeyValueFullInformation ;
 int MAXIMUM_ALLOWED ;
 int NtClose (int *) ;
 char* NtCreateKey (int **,int ,int *,int ,int *,int ,int *) ;
 char* NtDeleteKey (int *) ;
 char* NtEnumerateValueKey (int *,int ,int ,TYPE_1__*,int,int*) ;
 char* NtOpenKey (int **,int ,int *) ;
 char* NtSetValueKey (int *,int *,int ,scalar_t__,int ,int) ;
 int OBJ_CASE_INSENSITIVE ;
 scalar_t__ REG_DWORD ;
 int REG_OPTION_VOLATILE ;
 scalar_t__ REG_SZ ;
 int ReadConsoleA (int ,char*,int,int *,int *) ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 char* STATUS_SUCCESS ;
 int do_enumeratekey (char*) ;
 int dprintf (char*,...) ;

void test2(void)
{
 HKEY hKey,hKey1;
 OBJECT_ATTRIBUTES ObjectAttributes;
 UNICODE_STRING KeyName,ValueName;
 NTSTATUS Status;
 KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];
 ULONG Index,Length,i;
 char Buffer[10];
 DWORD Result;
  dprintf("NtCreateKey volatile: \n");
  dprintf("  \\Registry\\Machine\\Software\\test2reactos: ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test2reactos");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status = NtCreateKey ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
  ,0,((void*)0),REG_OPTION_VOLATILE,((void*)0));
  dprintf("\t\tStatus=%x\n",Status);
  NtClose(hKey);
  do_enumeratekey(L"\\Registry\\Machine\\Software");
  dprintf("  ...\\test2 :");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test2reactos\\test2");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status = NtCreateKey ( &hKey1, KEY_ALL_ACCESS , &ObjectAttributes
  ,0,((void*)0),REG_OPTION_VOLATILE,((void*)0));
  dprintf("\t\t\t\t\tStatus=%x\n",Status);
  dprintf("  ...\\TestVolatile :");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"TestVolatile");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , hKey1, ((void*)0));
  Status = NtCreateKey ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
  ,0,((void*)0),REG_OPTION_VOLATILE,((void*)0));
  dprintf("\t\t\t\tStatus=%x\n",Status);
  NtClose(hKey1);
  RtlRosInitUnicodeStringFromLiteral(&ValueName, L"TestREG_SZ");
  dprintf("NtSetValueKey reg_sz: ");
  Status=NtSetValueKey(hKey,&ValueName,0,REG_SZ,(PVOID)L"Test Reg_sz",24);
  dprintf("\t\t\t\tStatus=%x\n",Status);
  RtlRosInitUnicodeStringFromLiteral(&ValueName, L"TestDWORD");
  dprintf("NtSetValueKey reg_dword: ");
  Status=NtSetValueKey(hKey,&ValueName,0,REG_DWORD,(PVOID)"reac",4);
  dprintf("\t\t\tStatus=%x\n",Status);
  NtClose(hKey);
  dprintf("NtOpenKey \\Registry\\Machine\\Software\\test2reactos\\test2\\TestVolatile : ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test2reactos\\test2\\TestVolatile");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  Status=NtOpenKey( &hKey, MAXIMUM_ALLOWED, &ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    dprintf("NtEnumerateValueKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=NtEnumerateValueKey(hKey,Index++,KeyValueFullInformation
  ,&KeyValueInformation[0], sizeof(KeyValueInformation)
  ,&Length);
      if(Status== STATUS_SUCCESS)
 {
        dprintf("\tValue:DO=%d, DL=%d, NL=%d, Name = "
  ,KeyValueInformation[0].DataOffset
  ,KeyValueInformation[0].DataLength
  ,KeyValueInformation[0].NameLength);
   for (i=0;i<KeyValueInformation[0].NameLength/2;i++)
  dprintf("%C",KeyValueInformation[0].Name[i]);
        dprintf(", Type = %d\n",KeyValueInformation[0].Type);
   if (KeyValueInformation[0].Type == REG_SZ)
          dprintf("\t\tValue = %S\n",((char*)&KeyValueInformation[0]
         +KeyValueInformation[0].DataOffset));
 }
    }
  }
  NtClose(hKey);
  dprintf("delete \\Registry\\Machine\\software\\test2reactos ?");
  ReadConsoleA(InputHandle, Buffer, 3, &Result, ((void*)0)) ;
  if (Buffer[0] != 'y' && Buffer[0] != 'Y') return;
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test2reactos\\test2\\TestVolatile");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  dprintf("NtOpenKey : ");
  Status=NtOpenKey( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  dprintf("NtDeleteKey : ");
  Status=NtDeleteKey(hKey);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  NtClose(hKey);
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test2reactos\\test2");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  dprintf("NtOpenKey : ");
  Status=NtOpenKey( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  dprintf("NtDeleteKey : ");
  Status=NtDeleteKey(hKey);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  NtClose(hKey);
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test2reactos");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  dprintf("NtOpenKey : ");
  Status=NtOpenKey( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  dprintf("NtDeleteKey : ");
  Status=NtDeleteKey(hKey);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  NtClose(hKey);
}
