
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_8__ {int NameLength; char** Name; } ;
struct TYPE_7__ {int DataOffset; int NameLength; char** Name; char* Type; int DataLength; } ;
typedef char* PWCHAR ;
typedef int PCHAR ;
typedef int OBJECT_ATTRIBUTES ;
typedef char* NTSTATUS ;
typedef int KeyValueInformation ;
typedef int KeyInformation ;
typedef TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef TYPE_2__ KEY_BASIC_INFORMATION ;
typedef int * HKEY ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KEY_READ ;
 int KeyBasicInformation ;
 int KeyValueFullInformation ;
 int MAXIMUM_ALLOWED ;
 char* NtClose (int *) ;
 char* NtEnumerateKey (int *,int ,int ,TYPE_2__*,int,int*) ;
 char* NtEnumerateValueKey (int *,int ,int ,TYPE_1__*,int,int*) ;
 char* NtOpenKey (int **,int ,int *) ;
 char* NtQueryKey (int *,int ,TYPE_2__*,int,int*) ;
 char* NtQueryValueKey (int *,int *,int ,TYPE_1__*,int,int*) ;
 int OBJ_CASE_INSENSITIVE ;
 scalar_t__ REG_SZ ;
 int ROS_STRING_INITIALIZER (char*) ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 char* STATUS_SUCCESS ;
 int dprintf (char*,...) ;

void test1(void)
{
 HKEY hKey = ((void*)0), hKey1;
 OBJECT_ATTRIBUTES ObjectAttributes;
 NTSTATUS Status;
 UNICODE_STRING KeyName = ROS_STRING_INITIALIZER(L"\\Registry");
 ULONG Index,Length,i;
 KEY_BASIC_INFORMATION KeyInformation[5];
 KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];

  dprintf("NtOpenKey \\Registry : ");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  Status=NtOpenKey( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    dprintf("NtQueryKey : ");
    Status=NtQueryKey(hKey1,KeyBasicInformation
  ,&KeyInformation[0], sizeof(KeyInformation)
  ,&Length);
    dprintf("\t\t\t\t\tStatus =%x\n",Status);
    if (Status == STATUS_SUCCESS)
    {
        dprintf("\tKey Name = ");
   for (i=0;i<KeyInformation[0].NameLength/2;i++)
  dprintf("%C",KeyInformation[0].Name[i]);
        dprintf("\n");
    }
    dprintf("NtEnumerateKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=NtEnumerateKey(hKey1,Index++,KeyBasicInformation
  ,&KeyInformation[0], sizeof(KeyInformation)
  ,&Length);
      if(Status== STATUS_SUCCESS)
 {
        dprintf("\tSubKey Name = ");
   for (i=0;i<KeyInformation[0].NameLength/2;i++)
  dprintf("%C",KeyInformation[0].Name[i]);
        dprintf("\n");
 }
    }
    dprintf("NtClose : ");
    Status = NtClose( hKey1 );
    dprintf("\t\t\t\t\tStatus =%x\n",Status);
  }
  NtClose(hKey);

  dprintf("NtOpenKey \\Registry\\Machine : ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  Status=NtOpenKey( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
  dprintf("\t\t\tStatus =%x\n",Status);

  dprintf("NtOpenKey System\\Setup : ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"System\\Setup");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , hKey1 , ((void*)0));
  Status = NtOpenKey ( &hKey, KEY_READ , &ObjectAttributes);
  dprintf("\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    dprintf("NtQueryValueKey : ");
    RtlRosInitUnicodeStringFromLiteral(&KeyName, L"CmdLine");
    Status=NtQueryValueKey(hKey,&KeyName,KeyValueFullInformation
  ,&KeyValueInformation[0], sizeof(KeyValueInformation)
  ,&Length);
    dprintf("\t\t\t\tStatus =%x\n",Status);
    if (Status == STATUS_SUCCESS)
    {
      dprintf("\tValue:DO=%d, DL=%d, NL=%d, Name = "
       ,KeyValueInformation[0].DataOffset
       ,KeyValueInformation[0].DataLength
       ,KeyValueInformation[0].NameLength);
      for (i=0;i<10 && i<KeyValueInformation[0].NameLength/2;i++)
 dprintf("%C",KeyValueInformation[0].Name[i]);
      dprintf("\n");
      dprintf("\t\tType = %d\n",KeyValueInformation[0].Type);
      if (KeyValueInformation[0].Type == REG_SZ)
 dprintf("\t\tValue = %S\n",
  (PWCHAR)((PCHAR)&KeyValueInformation[0] + KeyValueInformation[0].DataOffset));
    }
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
    dprintf("NtClose : ");
    Status = NtClose( hKey );
    dprintf("\t\t\t\t\tStatus =%x\n",Status);
  }
  NtClose( hKey1 );
}
