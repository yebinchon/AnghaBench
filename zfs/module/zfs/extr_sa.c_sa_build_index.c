
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int sa_lock; } ;
typedef TYPE_2__ sa_os_t ;
typedef int sa_idx_tab_t ;
struct TYPE_17__ {scalar_t__ sa_magic; } ;
typedef TYPE_3__ sa_hdr_phys_t ;
struct TYPE_18__ {int * sa_spill_tab; int * sa_bonus_tab; TYPE_6__* sa_os; } ;
typedef TYPE_4__ sa_handle_t ;
typedef scalar_t__ sa_buf_type_t ;
typedef int dmu_object_type_t ;
struct TYPE_15__ {int db_object; } ;
struct TYPE_19__ {TYPE_1__ db; } ;
typedef TYPE_5__ dmu_buf_impl_t ;
struct TYPE_20__ {TYPE_2__* os_sa; } ;


 scalar_t__ BSWAP_32 (scalar_t__) ;
 int EIO ;
 scalar_t__ IS_SA_BONUSTYPE (int ) ;
 scalar_t__ SA_BONUS ;
 int SA_BONUSTYPE_FROM_DB (TYPE_5__*) ;
 TYPE_5__* SA_GET_DB (TYPE_4__*,scalar_t__) ;
 TYPE_3__* SA_GET_HDR (TYPE_4__*,scalar_t__) ;
 scalar_t__ SA_MAGIC ;
 int SET_ERROR (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_byteswap (TYPE_4__*,scalar_t__) ;
 int * sa_find_idx_tab (TYPE_6__*,int ,TYPE_3__*) ;
 int zfs_dbgmsg (char*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
sa_build_index(sa_handle_t *hdl, sa_buf_type_t buftype)
{
 sa_hdr_phys_t *sa_hdr_phys;
 dmu_buf_impl_t *db = SA_GET_DB(hdl, buftype);
 dmu_object_type_t bonustype = SA_BONUSTYPE_FROM_DB(db);
 sa_os_t *sa = hdl->sa_os->os_sa;
 sa_idx_tab_t *idx_tab;

 sa_hdr_phys = SA_GET_HDR(hdl, buftype);

 mutex_enter(&sa->sa_lock);




 if (IS_SA_BONUSTYPE(bonustype) && sa_hdr_phys->sa_magic != SA_MAGIC &&
     sa_hdr_phys->sa_magic != 0) {
  if (BSWAP_32(sa_hdr_phys->sa_magic) != SA_MAGIC) {
   mutex_exit(&sa->sa_lock);
   zfs_dbgmsg("Buffer Header: %x != SA_MAGIC:%x "
       "object=%#llx\n", sa_hdr_phys->sa_magic, SA_MAGIC,
       db->db.db_object);
   return (SET_ERROR(EIO));
  }
  sa_byteswap(hdl, buftype);
 }

 idx_tab = sa_find_idx_tab(hdl->sa_os, bonustype, sa_hdr_phys);

 if (buftype == SA_BONUS)
  hdl->sa_bonus_tab = idx_tab;
 else
  hdl->sa_spill_tab = idx_tab;

 mutex_exit(&sa->sa_lock);
 return (0);
}
