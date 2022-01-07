
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dsl_wrapping_key_t ;
struct TYPE_6__ {TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_5__ {int dp_spa; } ;


 int EACCES ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dsl_wrapping_key_rele (int *,int ) ;
 int spa_keystore_wkey_hold_dd (int ,TYPE_2__*,int ,int **) ;

__attribute__((used)) static int
dmu_objset_check_wkey_loaded(dsl_dir_t *dd)
{
 int ret;
 dsl_wrapping_key_t *wkey = ((void*)0);

 ret = spa_keystore_wkey_hold_dd(dd->dd_pool->dp_spa, dd, FTAG,
     &wkey);
 if (ret != 0)
  return (SET_ERROR(EACCES));

 dsl_wrapping_key_rele(wkey, FTAG);

 return (0);
}
