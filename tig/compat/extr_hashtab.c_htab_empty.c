
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
struct TYPE_6__ {int prime; } ;
struct TYPE_5__ {scalar_t__* entries; int size; int size_prime_index; scalar_t__ n_elements; scalar_t__ n_deleted; scalar_t__ (* alloc_f ) (int,int) ;int alloc_arg; scalar_t__ (* alloc_with_arg_f ) (int ,int,int) ;int (* free_with_arg_f ) (int ,scalar_t__*) ;int (* free_f ) (scalar_t__*) ;int (* del_f ) (scalar_t__) ;} ;
typedef scalar_t__ PTR ;


 scalar_t__ HTAB_DELETED_ENTRY ;
 scalar_t__ HTAB_EMPTY_ENTRY ;
 int higher_prime_index (int) ;
 size_t htab_size (TYPE_1__*) ;
 int memset (scalar_t__*,int ,size_t) ;
 TYPE_2__* prime_tab ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__*) ;
 int stub3 (int ,scalar_t__*) ;
 scalar_t__ stub4 (int ,int,int) ;
 scalar_t__ stub5 (int,int) ;

void
htab_empty (htab_t htab)
{
  size_t size = htab_size (htab);
  PTR *entries = htab->entries;
  int i;

  if (htab->del_f)
    for (i = size - 1; i >= 0; i--)
      if (entries[i] != HTAB_EMPTY_ENTRY && entries[i] != HTAB_DELETED_ENTRY)
 (*htab->del_f) (entries[i]);


  if (size > 1024*1024 / sizeof (PTR))
    {
      int nindex = higher_prime_index (1024 / sizeof (PTR));
      int nsize = prime_tab[nindex].prime;

      if (htab->free_f != ((void*)0))
 (*htab->free_f) (htab->entries);
      else if (htab->free_with_arg_f != ((void*)0))
 (*htab->free_with_arg_f) (htab->alloc_arg, htab->entries);
      if (htab->alloc_with_arg_f != ((void*)0))
 htab->entries = (PTR *) (*htab->alloc_with_arg_f) (htab->alloc_arg, nsize,
                 sizeof (PTR *));
      else
 htab->entries = (PTR *) (*htab->alloc_f) (nsize, sizeof (PTR *));
     htab->size = nsize;
     htab->size_prime_index = nindex;
    }
  else
    memset (entries, 0, size * sizeof (PTR));
  htab->n_deleted = 0;
  htab->n_elements = 0;
}
