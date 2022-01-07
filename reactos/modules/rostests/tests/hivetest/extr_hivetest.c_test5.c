
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
 int NtClose (int ) ;
 int NtFlushKey (int ) ;
 int NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 int dprintf (char*,...) ;

void test5(void)
{
  HANDLE hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName;
  NTSTATUS Status;

  dprintf("NtOpenKey : \n");
  dprintf("  \\Registry\\Machine\\Software\\reactos : ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName,L"\\Registry\\Machine\\Software\\reactos");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status=NtOpenKey( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  dprintf("\t\tStatus=%x\n",Status);
  dprintf("NtFlushKey : \n");
  Status = NtFlushKey(hKey);
  dprintf("\t\tStatus=%x\n",Status);
  dprintf("NtCloseKey : \n");
  Status=NtClose(hKey);
  dprintf("\t\tStatus=%x\n",Status);
}
