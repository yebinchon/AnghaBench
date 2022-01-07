
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int cHandleEntries; } ;
struct TYPE_11__ {int * DbgHandleCount; } ;
struct TYPE_10__ {TYPE_4__* ppi; } ;
struct TYPE_9__ {int type; TYPE_4__* pi; scalar_t__ flags; struct TYPE_9__* ptr; } ;
struct TYPE_8__ {TYPE_2__* freelist; } ;
typedef TYPE_1__* PUSER_HANDLE_TABLE ;
typedef TYPE_2__* PUSER_HANDLE_ENTRY ;
typedef TYPE_3__* PTHREADINFO ;
typedef TYPE_4__* PPROCESSINFO ;
 TYPE_5__* gpsi ;

__attribute__((used)) __inline static void *free_user_entry(PUSER_HANDLE_TABLE ht, PUSER_HANDLE_ENTRY entry)
{
   void *ret;
   ret = entry->ptr;
   entry->ptr = ht->freelist;
   entry->type = 0;
   entry->flags = 0;
   entry->pi = ((void*)0);
   ht->freelist = entry;

   gpsi->cHandleEntries--;

   return ret;
}
