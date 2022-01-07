
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zio_cksum_t ;
typedef int uint64_t ;
typedef int libzfs_handle_t ;
struct TYPE_6__ {scalar_t__ cur_ddt_size; scalar_t__ max_ddt_size; scalar_t__ ddt_full; int ddt_count; int ddecache; } ;
typedef TYPE_1__ dedup_table_t ;
struct TYPE_7__ {int dde_ref; int dde_prop; int dde_chksum; int * dde_next; } ;
typedef TYPE_2__ dedup_entry_t ;
typedef int dataref_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int TEXT_DOMAIN ;
 int UMEM_DEFAULT ;
 int assert (int ) ;
 int dgettext (int ,char*) ;
 TYPE_2__* umem_cache_alloc (int ,int ) ;
 int zfs_error_aux (int *,int ) ;

__attribute__((used)) static void
ddt_hash_append(libzfs_handle_t *hdl, dedup_table_t *ddt, dedup_entry_t **ddepp,
    zio_cksum_t *cs, uint64_t prop, dataref_t *dr)
{
 dedup_entry_t *dde;

 if (ddt->cur_ddt_size >= ddt->max_ddt_size) {
  if (ddt->ddt_full == B_FALSE) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Dedup table full.  Deduplication will continue "
       "with existing table entries"));
   ddt->ddt_full = B_TRUE;
  }
  return;
 }

 if ((dde = umem_cache_alloc(ddt->ddecache, UMEM_DEFAULT))
     != ((void*)0)) {
  assert(*ddepp == ((void*)0));
  dde->dde_next = ((void*)0);
  dde->dde_chksum = *cs;
  dde->dde_prop = prop;
  dde->dde_ref = *dr;
  *ddepp = dde;
  ddt->cur_ddt_size += sizeof (dedup_entry_t);
  ddt->ddt_count++;
 }
}
