
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int PUSER_HANDLE_TABLE ;
typedef int PUSER_HANDLE_ENTRY ;
typedef scalar_t__ HANDLE ;


 scalar_t__ entry_to_handle (int ,int ) ;
 int handle_to_entry (int ,scalar_t__) ;

HANDLE get_user_full_handle(PUSER_HANDLE_TABLE ht, HANDLE handle )
{
   PUSER_HANDLE_ENTRY entry;

   if ((ULONG_PTR)handle >> 16)
      return handle;
   if (!(entry = handle_to_entry(ht, handle )))
      return handle;
   return entry_to_handle( ht, entry );
}
