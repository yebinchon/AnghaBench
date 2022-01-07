
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zilog_t ;
struct TYPE_8__ {scalar_t__ zh_claim_txg; } ;
typedef TYPE_1__ zil_header_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int td_flags; int td_spa; } ;
typedef TYPE_2__ traverse_data_t ;
struct TYPE_10__ {int dp_meta_objset; } ;


 int TRAVERSE_NO_DECRYPT ;
 TYPE_7__* spa_get_dsl (int ) ;
 scalar_t__ spa_writeable (int ) ;
 int traverse_zil_block ;
 int traverse_zil_record ;
 int * zil_alloc (int ,TYPE_1__*) ;
 int zil_free (int *) ;
 int zil_parse (int *,int ,int ,TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static void
traverse_zil(traverse_data_t *td, zil_header_t *zh)
{
 uint64_t claim_txg = zh->zh_claim_txg;





 if (claim_txg == 0 && spa_writeable(td->td_spa))
  return;

 zilog_t *zilog = zil_alloc(spa_get_dsl(td->td_spa)->dp_meta_objset, zh);
 (void) zil_parse(zilog, traverse_zil_block, traverse_zil_record, td,
     claim_txg, !(td->td_flags & TRAVERSE_NO_DECRYPT));
 zil_free(zilog);
}
