
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_bookmark_phys_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int matchtype_t ;
struct TYPE_9__ {scalar_t__ ds_bookmarks_obj; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_10__ {int ds_flags; } ;
struct TYPE_8__ {TYPE_1__* dd_pool; } ;
struct TYPE_7__ {int * dp_meta_objset; } ;


 int DS_FLAG_CI_DATASET ;
 int ENOENT ;
 int ESRCH ;
 int MT_NORMALIZE ;
 int SET_ERROR (int) ;
 int bzero (int *,int) ;
 TYPE_4__* dsl_dataset_phys (TYPE_3__*) ;
 int zap_lookup_norm (int *,scalar_t__,char const*,int,int,int *,int ,int *,int ,int *) ;

int
dsl_bookmark_lookup_impl(dsl_dataset_t *ds, const char *shortname,
    zfs_bookmark_phys_t *bmark_phys)
{
 objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
 uint64_t bmark_zapobj = ds->ds_bookmarks_obj;
 matchtype_t mt = 0;
 int err;

 if (bmark_zapobj == 0)
  return (SET_ERROR(ESRCH));

 if (dsl_dataset_phys(ds)->ds_flags & DS_FLAG_CI_DATASET)
  mt = MT_NORMALIZE;





 bzero(bmark_phys, sizeof (*bmark_phys));

 err = zap_lookup_norm(mos, bmark_zapobj, shortname, sizeof (uint64_t),
     sizeof (*bmark_phys) / sizeof (uint64_t), bmark_phys, mt, ((void*)0), 0,
     ((void*)0));

 return (err == ENOENT ? ESRCH : err);
}
