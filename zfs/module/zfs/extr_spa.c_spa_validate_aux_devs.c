
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int vdev_guid; struct TYPE_10__* vdev_top; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int vdev_labeltype_t ;
typedef scalar_t__ uint_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_11__ {scalar_t__ sav_npending; int ** sav_pending; } ;
typedef TYPE_3__ spa_aux_vdev_t ;
typedef int nvlist_t ;
struct TYPE_9__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int EINVAL ;
 int ENOTSUP ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int SET_ERROR (int ) ;
 int VDEV_ALLOC_L2CACHE ;
 int VDEV_ALLOC_SPARE ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_GUID ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,char const*,int ***,scalar_t__*) ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 int spa_config_parse (int *,TYPE_2__**,int *,int *,int ,int) ;
 scalar_t__ spa_version (int *) ;
 int vdev_free (TYPE_2__*) ;
 int vdev_label_init (TYPE_2__*,scalar_t__,int ) ;
 int vdev_open (TYPE_2__*) ;

__attribute__((used)) static int
spa_validate_aux_devs(spa_t *spa, nvlist_t *nvroot, uint64_t crtxg, int mode,
    spa_aux_vdev_t *sav, const char *config, uint64_t version,
    vdev_labeltype_t label)
{
 nvlist_t **dev;
 uint_t i, ndev;
 vdev_t *vd;
 int error;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);




 if (nvlist_lookup_nvlist_array(nvroot, config, &dev, &ndev) != 0)
  return (0);

 if (ndev == 0)
  return (SET_ERROR(EINVAL));





 if (spa_version(spa) < version)
  return (SET_ERROR(ENOTSUP));





 sav->sav_pending = dev;
 sav->sav_npending = ndev;

 for (i = 0; i < ndev; i++) {
  if ((error = spa_config_parse(spa, &vd, dev[i], ((void*)0), 0,
      mode)) != 0)
   goto out;

  if (!vd->vdev_ops->vdev_op_leaf) {
   vdev_free(vd);
   error = SET_ERROR(EINVAL);
   goto out;
  }

  vd->vdev_top = vd;

  if ((error = vdev_open(vd)) == 0 &&
      (error = vdev_label_init(vd, crtxg, label)) == 0) {
   VERIFY(nvlist_add_uint64(dev[i], ZPOOL_CONFIG_GUID,
       vd->vdev_guid) == 0);
  }

  vdev_free(vd);

  if (error &&
      (mode != VDEV_ALLOC_SPARE && mode != VDEV_ALLOC_L2CACHE))
   goto out;
  else
   error = 0;
 }

out:
 sav->sav_pending = ((void*)0);
 sav->sav_npending = 0;
 return (error);
}
