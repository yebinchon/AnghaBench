
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_18__ ;


struct TYPE_30__ {int tx_txg; } ;
typedef TYPE_5__ dmu_tx_t ;
typedef int dmu_object_type_t ;
struct TYPE_31__ {int db_size; } ;
typedef TYPE_6__ dmu_buf_t ;
struct TYPE_32__ {int db_level; TYPE_1__* db_objset; } ;
typedef TYPE_7__ dmu_buf_impl_t ;
struct TYPE_29__ {int member_0; } ;
struct TYPE_28__ {TYPE_4__ member_0; } ;
struct TYPE_27__ {TYPE_3__ member_0; } ;
struct TYPE_33__ {TYPE_2__ member_0; } ;
typedef TYPE_8__ blkptr_t ;
struct TYPE_26__ {int os_dsl_dataset; } ;
struct TYPE_25__ {int dn_type; } ;


 int ASSERT (int ) ;
 int ASSERT0 (int ) ;
 int BPE_SET_LSIZE (TYPE_8__*,int ) ;
 int BP_SET_BIRTH (TYPE_8__*,int ,int ) ;
 int BP_SET_LEVEL (TYPE_8__*,int ) ;
 int BP_SET_REDACTED (TYPE_8__*) ;
 int BP_SET_TYPE (TYPE_8__*,int ) ;
 TYPE_18__* DB_DNODE (TYPE_7__*) ;
 int DB_DNODE_ENTER (TYPE_7__*) ;
 int DB_DNODE_EXIT (TYPE_7__*) ;
 int SPA_FEATURE_REDACTED_DATASETS ;
 int dbuf_override_impl (TYPE_7__*,TYPE_8__*,TYPE_5__*) ;
 int dmu_buf_will_not_fill (TYPE_6__*,TYPE_5__*) ;
 int dsl_dataset_feature_is_active (int ,int ) ;

void
dmu_buf_redact(dmu_buf_t *dbuf, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)dbuf;
 dmu_object_type_t type;
 ASSERT(dsl_dataset_feature_is_active(db->db_objset->os_dsl_dataset,
     SPA_FEATURE_REDACTED_DATASETS));

 DB_DNODE_ENTER(db);
 type = DB_DNODE(db)->dn_type;
 DB_DNODE_EXIT(db);

 ASSERT0(db->db_level);
 dmu_buf_will_not_fill(dbuf, tx);

 blkptr_t bp = { { { {0} } } };
 BP_SET_TYPE(&bp, type);
 BP_SET_LEVEL(&bp, 0);
 BP_SET_BIRTH(&bp, tx->tx_txg, 0);
 BP_SET_REDACTED(&bp);
 BPE_SET_LSIZE(&bp, dbuf->db_size);

 dbuf_override_impl(db, &bp, tx);
}
