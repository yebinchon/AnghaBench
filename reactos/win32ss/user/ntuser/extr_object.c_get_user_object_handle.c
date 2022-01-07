
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; void* ptr; } ;
typedef int PUSER_HANDLE_TABLE ;
typedef TYPE_1__* PUSER_HANDLE_ENTRY ;
typedef scalar_t__ HANDLE_TYPE ;
typedef int HANDLE ;


 int entry_to_handle (int ,TYPE_1__*) ;
 TYPE_1__* handle_to_entry (int ,int ) ;

void *get_user_object_handle(PUSER_HANDLE_TABLE ht, HANDLE* handle, HANDLE_TYPE type )
{
   PUSER_HANDLE_ENTRY entry;

   if (!(entry = handle_to_entry(ht, *handle )) || entry->type != type)
      return ((void*)0);
   *handle = entry_to_handle( ht, entry );
   return entry->ptr;
}
