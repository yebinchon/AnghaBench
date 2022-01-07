
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * zhca_holds; int zhca_spa_load_guid; int zhca_spaname; } ;
typedef TYPE_1__ zfs_hold_cleanup_arg_t ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef scalar_t__ minor_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int dsl_dataset_user_release_onexit ;
 int fnvlist_free (int *) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 scalar_t__ nvlist_empty (int *) ;
 int spa_load_guid (int *) ;
 int spa_name (int *) ;
 int strlcpy (int ,int ,int) ;
 int zfs_onexit_add_cb (scalar_t__,int ,TYPE_1__*,int *) ;

__attribute__((used)) static void
dsl_onexit_hold_cleanup(spa_t *spa, nvlist_t *holds, minor_t minor)
{
 zfs_hold_cleanup_arg_t *ca;

 if (minor == 0 || nvlist_empty(holds)) {
  fnvlist_free(holds);
  return;
 }

 ASSERT(spa != ((void*)0));
 ca = kmem_alloc(sizeof (*ca), KM_SLEEP);

 (void) strlcpy(ca->zhca_spaname, spa_name(spa),
     sizeof (ca->zhca_spaname));
 ca->zhca_spa_load_guid = spa_load_guid(spa);
 ca->zhca_holds = holds;
 VERIFY0(zfs_onexit_add_cb(minor,
     dsl_dataset_user_release_onexit, ca, ((void*)0)));
}
