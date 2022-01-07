
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int InputHandle ;
 int KEY_ALL_ACCESS ;
 int NtClose (int ) ;
 int NtCreateKey (int *,int ,int *,int ,int *,int ,int *) ;
 int NtDeleteKey (int ) ;
 int NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int REG_OPTION_NON_VOLATILE ;
 int ReadConsoleA (int ,char*,int,int *,int *) ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 int dprintf (char*,...) ;

void test3(void)
{
 HANDLE hKey;
 OBJECT_ATTRIBUTES ObjectAttributes;
 UNICODE_STRING KeyName;
 NTSTATUS Status;
 char Buffer[10];
 DWORD Result;
  dprintf("NtCreateKey non volatile: \n");
  dprintf("  \\Registry\\Machine\\Software\\test3reactos: ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status = NtCreateKey ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
  ,0,((void*)0),REG_OPTION_NON_VOLATILE,((void*)0));
  dprintf("\t\tStatus=%x\n",Status);
  NtClose(hKey);

  dprintf("delete \\Registry\\Machine\\software\\test3reactos ?");
  ReadConsoleA(InputHandle, Buffer, 3, &Result, ((void*)0)) ;
  if (Buffer[0] != 'y' && Buffer[0] != 'Y') return;

  dprintf("delete \\Registry\\Machine\\software\\test3reactos ?");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos");
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
