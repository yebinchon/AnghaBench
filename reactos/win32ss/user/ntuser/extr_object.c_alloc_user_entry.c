
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cHandleEntries; } ;
struct TYPE_9__ {int generation; struct TYPE_9__* ptr; } ;
struct TYPE_8__ {int nb_handles; int allocated_handles; TYPE_2__* handles; TYPE_2__* freelist; } ;
typedef TYPE_1__* PUSER_HANDLE_TABLE ;
typedef TYPE_2__* PUSER_HANDLE_ENTRY ;


 int DbgUserDumpHandleTable () ;
 int ERR (char*,int ,int) ;
 int FIRST_USER_HANDLE ;
 int LAST_USER_HANDLE ;
 int TRACE (char*,int ) ;
 TYPE_2__* UserHeapReAlloc (TYPE_2__*,int) ;
 TYPE_3__* gpsi ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) __inline static PUSER_HANDLE_ENTRY alloc_user_entry(PUSER_HANDLE_TABLE ht)
{
   PUSER_HANDLE_ENTRY entry;
   TRACE("handles used %lu\n", gpsi->cHandleEntries);

   if (ht->freelist)
   {
      entry = ht->freelist;
      ht->freelist = entry->ptr;

      gpsi->cHandleEntries++;
      return entry;
   }

   if (ht->nb_handles >= ht->allocated_handles)
   {
       ERR("Out of user handles! Used -> %lu, NM_Handle -> %d\n", gpsi->cHandleEntries, ht->nb_handles);





      return ((void*)0);
   }

   entry = &ht->handles[ht->nb_handles++];

   entry->generation = 1;

   gpsi->cHandleEntries++;

   return entry;
}
