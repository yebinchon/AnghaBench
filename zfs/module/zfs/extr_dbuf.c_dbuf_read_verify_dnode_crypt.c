
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int uint32_t ;
struct TYPE_12__ {int os_spa; scalar_t__ os_raw_receive; int os_encrypted; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_13__ {int dn_bonustype; int dn_type; TYPE_1__* dn_dbuf; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_14__ {scalar_t__ db_blkid; int db_mtx; TYPE_2__* db_objset; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
typedef int arc_buf_t ;
struct TYPE_11__ {int db_blkid; int * db_buf; } ;


 int ASSERT (int ) ;
 int B_TRUE ;
 TYPE_3__* DB_DNODE (TYPE_4__*) ;
 int DB_DNODE_ENTER (TYPE_4__*) ;
 int DB_DNODE_EXIT (TYPE_4__*) ;
 int DB_RF_NO_DECRYPT ;
 scalar_t__ DMU_BONUS_BLKID ;
 int DMU_META_DNODE_OBJECT ;
 int DMU_OT_IS_ENCRYPTED (int ) ;
 int EACCES ;
 int MUTEX_HELD (int *) ;
 int SET_BOOKMARK (int *,int ,int ,int ,int ) ;
 int arc_is_encrypted (int *) ;
 int arc_untransform (int *,int ,int *,int ) ;
 int dmu_objset_id (TYPE_2__*) ;

__attribute__((used)) static int
dbuf_read_verify_dnode_crypt(dmu_buf_impl_t *db, uint32_t flags)
{
 int err = 0;
 objset_t *os = db->db_objset;
 arc_buf_t *dnode_abuf;
 dnode_t *dn;
 zbookmark_phys_t zb;

 ASSERT(MUTEX_HELD(&db->db_mtx));

 if (!os->os_encrypted || os->os_raw_receive ||
     (flags & DB_RF_NO_DECRYPT) != 0)
  return (0);

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 dnode_abuf = (dn->dn_dbuf != ((void*)0)) ? dn->dn_dbuf->db_buf : ((void*)0);

 if (dnode_abuf == ((void*)0) || !arc_is_encrypted(dnode_abuf)) {
  DB_DNODE_EXIT(db);
  return (0);
 }

 SET_BOOKMARK(&zb, dmu_objset_id(os),
     DMU_META_DNODE_OBJECT, 0, dn->dn_dbuf->db_blkid);
 err = arc_untransform(dnode_abuf, os->os_spa, &zb, B_TRUE);






 if (err == EACCES && ((db->db_blkid != DMU_BONUS_BLKID &&
     !DMU_OT_IS_ENCRYPTED(dn->dn_type)) ||
     (db->db_blkid == DMU_BONUS_BLKID &&
     !DMU_OT_IS_ENCRYPTED(dn->dn_bonustype))))
  err = 0;

 DB_DNODE_EXIT(db);

 return (err);
}
