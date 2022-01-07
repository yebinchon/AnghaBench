
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int USER_HANDLE_ENTRY ;
typedef int ULONG ;
struct TYPE_3__ {int allocated_handles; scalar_t__ nb_handles; int handles; int * freelist; } ;
typedef int PVOID ;
typedef TYPE_1__* PUSER_HANDLE_TABLE ;



VOID UserInitHandleTable(PUSER_HANDLE_TABLE ht, PVOID mem, ULONG bytes)
{
   ht->freelist = ((void*)0);
   ht->handles = mem;

   ht->nb_handles = 0;
   ht->allocated_handles = bytes / sizeof(USER_HANDLE_ENTRY);
}
