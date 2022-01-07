
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int * ptr; } ;
typedef int * PVOID ;
typedef int PUSER_HANDLE_TABLE ;
typedef TYPE_1__* PUSER_HANDLE_ENTRY ;
typedef scalar_t__ HANDLE_TYPE ;
typedef int HANDLE ;


 int ASSERT (int ) ;
 int ERROR_INVALID_HANDLE ;
 int EngSetLastError (int ) ;
 TYPE_1__* handle_to_entry (int ,int ) ;

PVOID UserGetObject(PUSER_HANDLE_TABLE ht, HANDLE handle, HANDLE_TYPE type )
{
   PUSER_HANDLE_ENTRY entry;

   ASSERT(ht);

   if (!(entry = handle_to_entry(ht, handle )) || entry->type != type)
   {
      EngSetLastError(ERROR_INVALID_HANDLE);
      return ((void*)0);
   }
   return entry->ptr;
}
