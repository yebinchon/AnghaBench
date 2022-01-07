
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buffer ;
typedef int WCHAR ;
struct TYPE_7__ {int LowPart; int HighPart; } ;
struct TYPE_6__ {size_t PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_5__ {int Attributes; TYPE_3__ Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef size_t DWORD ;


 int LookupPrivilegeName (int ,TYPE_3__*,int *,size_t*) ;
 int SE_PRIVILEGE_ENABLED ;
 int SE_PRIVILEGE_ENABLED_BY_DEFAULT ;
 int SE_PRIVILEGE_USED_FOR_ACCESS ;
 int printf (char*,...) ;

void
DisplayTokenPrivileges(TOKEN_PRIVILEGES* pPriv)
{
 WCHAR buffer[256];
 DWORD i;

 printf("\nprivileges:\n");
 for (i = 0; i < pPriv->PrivilegeCount; i++)
 {
  DWORD cbName = sizeof(buffer) / sizeof(buffer[0]);
  LookupPrivilegeName(0, &pPriv->Privileges[i].Luid, buffer, &cbName);

  printf("%S{0x%08x, 0x%08x} [", buffer, pPriv->Privileges[i].Luid.HighPart, pPriv->Privileges[i].Luid.LowPart);

  if ( pPriv->Privileges[i].Attributes & SE_PRIVILEGE_ENABLED )
   printf("enabled,");
  if ( pPriv->Privileges[i].Attributes & SE_PRIVILEGE_ENABLED_BY_DEFAULT )
   printf("default,");
  if ( pPriv->Privileges[i].Attributes & SE_PRIVILEGE_USED_FOR_ACCESS )
   printf("used");

  printf("]\n");
 }
}
