
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int * sav_config; } ;
typedef TYPE_1__ spa_aux_vdev_t ;
typedef int nvlist_t ;


 int DATA_TYPE_NVLIST_ARRAY ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ** kmem_alloc (int,int ) ;
 int kmem_free (int **,int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,char const*,int **,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,char const*,int ***,int*) ;
 scalar_t__ nvlist_remove (int *,char const*,int ) ;

__attribute__((used)) static void
spa_set_aux_vdevs(spa_aux_vdev_t *sav, nvlist_t **devs, int ndevs,
    const char *config)
{
 int i;

 if (sav->sav_config != ((void*)0)) {
  nvlist_t **olddevs;
  uint_t oldndevs;
  nvlist_t **newdevs;





  VERIFY(nvlist_lookup_nvlist_array(sav->sav_config, config,
      &olddevs, &oldndevs) == 0);

  newdevs = kmem_alloc(sizeof (void *) *
      (ndevs + oldndevs), KM_SLEEP);
  for (i = 0; i < oldndevs; i++)
   VERIFY(nvlist_dup(olddevs[i], &newdevs[i],
       KM_SLEEP) == 0);
  for (i = 0; i < ndevs; i++)
   VERIFY(nvlist_dup(devs[i], &newdevs[i + oldndevs],
       KM_SLEEP) == 0);

  VERIFY(nvlist_remove(sav->sav_config, config,
      DATA_TYPE_NVLIST_ARRAY) == 0);

  VERIFY(nvlist_add_nvlist_array(sav->sav_config,
      config, newdevs, ndevs + oldndevs) == 0);
  for (i = 0; i < oldndevs + ndevs; i++)
   nvlist_free(newdevs[i]);
  kmem_free(newdevs, (oldndevs + ndevs) * sizeof (void *));
 } else {



  VERIFY(nvlist_alloc(&sav->sav_config, NV_UNIQUE_NAME,
      KM_SLEEP) == 0);
  VERIFY(nvlist_add_nvlist_array(sav->sav_config, config,
      devs, ndevs) == 0);
 }
}
