
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ztest_ds_t ;
struct TYPE_4__ {scalar_t__ zl_parse_lr_count; scalar_t__ zl_replaying_seq; scalar_t__ zl_parse_blk_count; } ;
typedef TYPE_1__ zilog_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
struct TYPE_5__ {int zo_verbose; } ;


 int B_TRUE ;
 int DMU_OST_ANY ;
 int FTAG ;
 int UMEM_NOFAIL ;
 int VERIFY0 (int ) ;
 int dmu_objset_disown (int *,int ,int ) ;
 TYPE_1__* dmu_objset_zil (int *) ;
 int printf (char*,char const*,int ,int ,int ) ;
 int * umem_alloc (int,int ) ;
 int umem_free (int *,int) ;
 int zil_replay (int *,int *,int ) ;
 int ztest_dmu_objset_own (char const*,int ,int ,int ,int ,int **) ;
 TYPE_2__ ztest_opts ;
 int ztest_replay_vector ;
 int ztest_zd_fini (int *) ;
 int ztest_zd_init (int *,int *,int *) ;

__attribute__((used)) static int
ztest_replay_zil_cb(const char *name, void *arg)
{
 objset_t *os;
 ztest_ds_t *zdtmp;

 VERIFY0(ztest_dmu_objset_own(name, DMU_OST_ANY, B_TRUE,
     B_TRUE, FTAG, &os));

 zdtmp = umem_alloc(sizeof (ztest_ds_t), UMEM_NOFAIL);

 ztest_zd_init(zdtmp, ((void*)0), os);
 zil_replay(os, zdtmp, ztest_replay_vector);
 ztest_zd_fini(zdtmp);

 if (dmu_objset_zil(os)->zl_parse_lr_count != 0 &&
     ztest_opts.zo_verbose >= 6) {
  zilog_t *zilog = dmu_objset_zil(os);

  (void) printf("%s replay %llu blocks, %llu records, seq %llu\n",
      name,
      (u_longlong_t)zilog->zl_parse_blk_count,
      (u_longlong_t)zilog->zl_parse_lr_count,
      (u_longlong_t)zilog->zl_replaying_seq);
 }

 umem_free(zdtmp, sizeof (ztest_ds_t));

 dmu_objset_disown(os, B_TRUE, FTAG);
 return (0);
}
