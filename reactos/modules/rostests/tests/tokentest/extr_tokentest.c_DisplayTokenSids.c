
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t GroupCount; int * Groups; } ;
struct TYPE_5__ {int User; } ;
typedef TYPE_1__ TOKEN_USER ;
typedef int TOKEN_PRIMARY_GROUP ;
typedef int TOKEN_OWNER ;
typedef TYPE_2__ TOKEN_GROUPS ;
typedef size_t DWORD ;


 int PrintSid (int *,int *,int *) ;
 int printf (char*) ;

void
DisplayTokenSids(TOKEN_USER* pUser,
     TOKEN_GROUPS* pGroups,
     TOKEN_OWNER* pOwner,
     TOKEN_PRIMARY_GROUP* pPrimary)
{
 DWORD i;

 printf("\nSids:\n");
 PrintSid(&pUser->User, pOwner, pPrimary);
 printf("\nGroups:\n");
 for (i = 0; i < pGroups->GroupCount; i++)
  PrintSid(&pGroups->Groups[i], pOwner, pPrimary);
}
