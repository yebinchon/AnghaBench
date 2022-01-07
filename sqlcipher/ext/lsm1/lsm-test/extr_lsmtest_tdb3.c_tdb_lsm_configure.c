
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int test_lsm_config_str (int ,int *,int ,char const*,int ) ;

int tdb_lsm_configure(lsm_db *db, const char *zConfig){
  return test_lsm_config_str(0, db, 0, zConfig, 0);
}
