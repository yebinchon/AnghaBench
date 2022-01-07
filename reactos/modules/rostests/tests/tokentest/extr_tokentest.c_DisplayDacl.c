
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_12__ {scalar_t__ AceCount; } ;
struct TYPE_9__ {scalar_t__ AceType; } ;
struct TYPE_11__ {int AccessMask; TYPE_1__ Header; } ;
typedef TYPE_3__ ROS_ACE ;
typedef scalar_t__ PSID ;
typedef TYPE_4__* PACL ;
typedef int NTSTATUS ;
typedef char* LPWSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ACCESS_ALLOWED_ACE_TYPE ;
 scalar_t__ ACCESS_DENIED_ACE_TYPE ;
 int LocalFree (int ) ;
 int NT_SUCCESS (int) ;
 int RtlConvertSidToUnicodeString (TYPE_2__*,scalar_t__,int ) ;
 int RtlGetAce (TYPE_4__*,scalar_t__,TYPE_3__**) ;
 int TRUE ;
 int printf (char*,...) ;

void
DisplayDacl(PACL pAcl)
{
 DWORD i;
 NTSTATUS status;

 if ( ! pAcl )
 {
  printf("\nNo Default Dacl.\n");
  return;
 }

 printf("\nDacl:\n");
 for (i = 0; i < pAcl->AceCount; i++)
 {
  UNICODE_STRING scSid;
  ROS_ACE* pAce;
  LPWSTR wszType = 0;
  PSID pSid;

  status = RtlGetAce(pAcl, i, (ROS_ACE**) &pAce);
  if ( ! NT_SUCCESS(status) )
  {
   printf("RtlGetAce(): status = 0x%08x\n", status);
   break;
  }

  pSid = (PSID) (pAce + 1);
  if ( pAce->Header.AceType == ACCESS_ALLOWED_ACE_TYPE )
   wszType = L"allow";
  if ( pAce->Header.AceType == ACCESS_DENIED_ACE_TYPE )
   wszType = L"deny ";

  status = RtlConvertSidToUnicodeString(&scSid, pSid, TRUE);
  if ( ! NT_SUCCESS(status) )
  {
   printf("RtlConvertSidToUnicodeString(): status = 0x%08x\n", status);
   break;
  }

  printf("%d.) %S %wZ 0x%08x\n", i, wszType, &scSid, pAce->AccessMask);
  LocalFree(scSid.Buffer);
 }
}
