
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* htab_trav ) (scalar_t__*,scalar_t__) ;
typedef TYPE_1__* htab_t ;
struct TYPE_4__ {scalar_t__* entries; } ;
typedef scalar_t__ PTR ;


 scalar_t__ HTAB_DELETED_ENTRY ;
 scalar_t__ HTAB_EMPTY_ENTRY ;
 int htab_size (TYPE_1__*) ;
 int stub1 (scalar_t__*,scalar_t__) ;

void
htab_traverse_noresize (htab_t htab, htab_trav callback, PTR info)
{
  PTR *slot;
  PTR *limit;

  slot = htab->entries;
  limit = slot + htab_size (htab);

  do
    {
      PTR x = *slot;

      if (x != HTAB_EMPTY_ENTRY && x != HTAB_DELETED_ENTRY)
 if (!(*callback) (slot, info))
   break;
    }
  while (++slot < limit);
}
