
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* zv_zso; int zv_hash; int zv_hlink; int zv_name; int zv_state_lock; } ;
typedef TYPE_2__ zvol_state_t ;
struct TYPE_4__ {int zvo_disk; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int RW_LOCK_HELD (int *) ;
 int ZVOL_HT_HEAD (int ) ;
 int get_disk_ro (int ) ;
 int hlist_add_head (int *,int ) ;
 int hlist_del (int *) ;
 int set_disk_ro (int ,int) ;
 int strlcpy (int ,char const*,int) ;
 int zvol_name_hash (int ) ;
 int zvol_state_lock ;

__attribute__((used)) static void
zvol_rename_minor(zvol_state_t *zv, const char *newname)
{
 int readonly = get_disk_ro(zv->zv_zso->zvo_disk);

 ASSERT(RW_LOCK_HELD(&zvol_state_lock));
 ASSERT(MUTEX_HELD(&zv->zv_state_lock));

 strlcpy(zv->zv_name, newname, sizeof (zv->zv_name));


 zv->zv_hash = zvol_name_hash(zv->zv_name);
 hlist_del(&zv->zv_hlink);
 hlist_add_head(&zv->zv_hlink, ZVOL_HT_HEAD(zv->zv_hash));
 set_disk_ro(zv->zv_zso->zvo_disk, !readonly);
 set_disk_ro(zv->zv_zso->zvo_disk, readonly);
}
