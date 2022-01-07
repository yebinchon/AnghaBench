
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int libzfs_handle_t ;
struct TYPE_11__ {TYPE_3__** dedup_hash_array; int numhashbits; } ;
typedef TYPE_2__ dedup_table_t ;
struct TYPE_12__ {scalar_t__ dde_prop; int dde_ref; int dde_chksum; struct TYPE_12__* dde_next; } ;
typedef TYPE_3__ dedup_entry_t ;
typedef int dataref_t ;
typedef int boolean_t ;


 size_t BF64_GET (int ,int ,int ) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ ZIO_CHECKSUM_EQUAL (int ,TYPE_1__) ;
 int ddt_hash_append (int *,TYPE_2__*,TYPE_3__**,TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static boolean_t
ddt_update(libzfs_handle_t *hdl, dedup_table_t *ddt, zio_cksum_t *cs,
    uint64_t prop, dataref_t *dr)
{
 uint32_t hashcode;
 dedup_entry_t **ddepp;

 hashcode = BF64_GET(cs->zc_word[0], 0, ddt->numhashbits);

 for (ddepp = &(ddt->dedup_hash_array[hashcode]); *ddepp != ((void*)0);
     ddepp = &((*ddepp)->dde_next)) {
  if (ZIO_CHECKSUM_EQUAL(((*ddepp)->dde_chksum), *cs) &&
      (*ddepp)->dde_prop == prop) {
   *dr = (*ddepp)->dde_ref;
   return (B_TRUE);
  }
 }
 ddt_hash_append(hdl, ddt, ddepp, cs, prop, dr);
 return (B_FALSE);
}
