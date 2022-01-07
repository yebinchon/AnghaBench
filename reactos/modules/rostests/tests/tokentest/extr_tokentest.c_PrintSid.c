
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_12__ {int Attributes; int Sid; } ;
struct TYPE_11__ {int Owner; } ;
struct TYPE_10__ {int PrimaryGroup; } ;
typedef TYPE_2__ TOKEN_PRIMARY_GROUP ;
typedef TYPE_3__ TOKEN_OWNER ;
typedef TYPE_4__ SID_AND_ATTRIBUTES ;


 scalar_t__ EqualSid (int ,int ) ;
 int LocalFree (int ) ;
 int RtlConvertSidToUnicodeString (TYPE_1__*,int ,int ) ;
 int SE_GROUP_ENABLED ;
 int SE_GROUP_ENABLED_BY_DEFAULT ;
 int SE_GROUP_LOGON_ID ;
 int SE_GROUP_MANDATORY ;
 int TRUE ;
 int printf (char*,...) ;

void
PrintSid(SID_AND_ATTRIBUTES* pSid, TOKEN_OWNER* pOwner, TOKEN_PRIMARY_GROUP* pPrimary)
{
 UNICODE_STRING scSid;

 RtlConvertSidToUnicodeString(&scSid, pSid->Sid, TRUE);
 printf("%wZ [", &scSid);
 LocalFree(scSid.Buffer);

 if ( EqualSid(pSid->Sid, pOwner->Owner) )
  printf("owner,");

 if ( EqualSid(pSid->Sid, pPrimary->PrimaryGroup) )
  printf("primary,");

 if ( pSid->Attributes & SE_GROUP_ENABLED )
 {
  if ( pSid->Attributes & SE_GROUP_ENABLED_BY_DEFAULT )
   printf("enabled-default,");
  else
   printf("enabled,");
 }

 if ( pSid->Attributes & SE_GROUP_LOGON_ID )
  printf("logon,");


 if ( pSid->Attributes & SE_GROUP_MANDATORY )
  printf("mandatory,");

 printf("]\n");
}
