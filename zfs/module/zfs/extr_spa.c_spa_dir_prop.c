
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef scalar_t__ boolean_t ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 int ENOENT ;
 int spa_load_failed (TYPE_1__*,char*,char const*,int) ;
 int zap_lookup (int ,int ,char const*,int,int,int *) ;

__attribute__((used)) static int
spa_dir_prop(spa_t *spa, const char *name, uint64_t *val, boolean_t log_enoent)
{
 int error = zap_lookup(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     name, sizeof (uint64_t), 1, val);

 if (error != 0 && (error != ENOENT || log_enoent)) {
  spa_load_failed(spa, "couldn't get '%s' value in MOS directory "
      "[error=%d]", name, error);
 }

 return (error);
}
