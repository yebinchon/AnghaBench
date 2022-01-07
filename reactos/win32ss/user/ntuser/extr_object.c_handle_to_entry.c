
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned short generation; int type; } ;
struct TYPE_5__ {int nb_handles; TYPE_2__* handles; } ;
typedef TYPE_1__* PUSER_HANDLE_TABLE ;
typedef TYPE_2__* PUSER_HANDLE_ENTRY ;
typedef int HANDLE ;


 int FIRST_USER_HANDLE ;
 unsigned short HIWORD (int ) ;
 int LOWORD (int ) ;

PUSER_HANDLE_ENTRY handle_to_entry(PUSER_HANDLE_TABLE ht, HANDLE handle )
{
   unsigned short generation;
   int index = (LOWORD(handle) - FIRST_USER_HANDLE) >> 1;
   if (index < 0 || index >= ht->nb_handles)
      return ((void*)0);
   if (!ht->handles[index].type)
      return ((void*)0);
   generation = HIWORD(handle);
   if (generation == ht->handles[index].generation || !generation || generation == 0xffff)
      return &ht->handles[index];
   return ((void*)0);
}
