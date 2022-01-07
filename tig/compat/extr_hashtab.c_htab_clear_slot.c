
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
struct TYPE_4__ {scalar_t__* entries; int n_deleted; int (* del_f ) (scalar_t__) ;} ;
typedef scalar_t__ PTR ;


 scalar_t__ HTAB_DELETED_ENTRY ;
 scalar_t__ HTAB_EMPTY_ENTRY ;
 int abort () ;
 int htab_size (TYPE_1__*) ;
 int stub1 (scalar_t__) ;

void
htab_clear_slot (htab_t htab, PTR *slot)
{
  if (slot < htab->entries || slot >= htab->entries + htab_size (htab)
      || *slot == HTAB_EMPTY_ENTRY || *slot == HTAB_DELETED_ENTRY)
    abort ();

  if (htab->del_f)
    (*htab->del_f) (*slot);

  *slot = HTAB_DELETED_ENTRY;
  htab->n_deleted++;
}
