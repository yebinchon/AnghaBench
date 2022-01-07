
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int os_raw_receive; } ;
typedef TYPE_1__ objset_t ;
struct TYPE_10__ {int * gme_ds; int guid; scalar_t__ raw; } ;
typedef TYPE_2__ guid_map_entry_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int ds_hold_flags_t ;
typedef scalar_t__ boolean_t ;
typedef int avl_tree_t ;
struct TYPE_11__ {int ds_guid; } ;


 int ASSERT (int ) ;
 int B_TRUE ;
 int DS_HOLD_FLAG_DECRYPT ;
 int FTAG ;
 int KM_SLEEP ;
 int avl_add (int *,TYPE_2__*) ;
 int dmu_objset_from_ds (int *,TYPE_1__**) ;
 int dsl_dataset_disown (int *,int ,int ) ;
 int dsl_dataset_own_obj (int *,int ,int ,TYPE_2__*,int **) ;
 TYPE_5__* dsl_dataset_phys (int *) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_2__*,int) ;

__attribute__((used)) static int
add_ds_to_guidmap(const char *name, avl_tree_t *guid_map, uint64_t snapobj,
    boolean_t raw)
{
 dsl_pool_t *dp;
 dsl_dataset_t *snapds;
 guid_map_entry_t *gmep;
 objset_t *os;
 ds_hold_flags_t dsflags = (raw) ? 0 : DS_HOLD_FLAG_DECRYPT;
 int err;

 ASSERT(guid_map != ((void*)0));

 err = dsl_pool_hold(name, FTAG, &dp);
 if (err != 0)
  return (err);
 gmep = kmem_alloc(sizeof (*gmep), KM_SLEEP);
 err = dsl_dataset_own_obj(dp, snapobj, dsflags, gmep, &snapds);

 if (err == 0) {






  if (raw) {
   err = dmu_objset_from_ds(snapds, &os);
   if (err != 0) {
    dsl_dataset_disown(snapds, dsflags, FTAG);
    dsl_pool_rele(dp, FTAG);
    kmem_free(gmep, sizeof (*gmep));
    return (err);
   }
   os->os_raw_receive = B_TRUE;
  }

  gmep->raw = raw;
  gmep->guid = dsl_dataset_phys(snapds)->ds_guid;
  gmep->gme_ds = snapds;
  avl_add(guid_map, gmep);
 } else {
  kmem_free(gmep, sizeof (*gmep));
 }

 dsl_pool_rele(dp, FTAG);
 return (err);
}
