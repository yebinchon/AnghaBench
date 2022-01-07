
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int znode_phys_t ;
typedef int uint64_t ;
typedef int sa_handle_t ;
typedef int objset_t ;
struct TYPE_3__ {scalar_t__ doi_bonus_type; int doi_bonus_size; } ;
typedef TYPE_1__ dmu_object_info_t ;
typedef int dmu_buf_t ;


 scalar_t__ DMU_OT_SA ;
 scalar_t__ DMU_OT_ZNODE ;
 int ENOTSUP ;
 int SA_HDL_PRIVATE ;
 int SET_ERROR (int ) ;
 int dmu_object_info_from_db (int *,TYPE_1__*) ;
 int sa_buf_hold (int *,int ,void*,int **) ;
 int sa_buf_rele (int *,void*) ;
 int sa_handle_get (int *,int ,int *,int ,int **) ;

__attribute__((used)) static int
zfs_grab_sa_handle(objset_t *osp, uint64_t obj, sa_handle_t **hdlp,
    dmu_buf_t **db, void *tag)
{
 dmu_object_info_t doi;
 int error;

 if ((error = sa_buf_hold(osp, obj, tag, db)) != 0)
  return (error);

 dmu_object_info_from_db(*db, &doi);
 if ((doi.doi_bonus_type != DMU_OT_SA &&
     doi.doi_bonus_type != DMU_OT_ZNODE) ||
     (doi.doi_bonus_type == DMU_OT_ZNODE &&
     doi.doi_bonus_size < sizeof (znode_phys_t))) {
  sa_buf_rele(*db, tag);
  return (SET_ERROR(ENOTSUP));
 }

 error = sa_handle_get(osp, obj, ((void*)0), SA_HDL_PRIVATE, hdlp);
 if (error != 0) {
  sa_buf_rele(*db, tag);
  return (error);
 }

 return (0);
}
