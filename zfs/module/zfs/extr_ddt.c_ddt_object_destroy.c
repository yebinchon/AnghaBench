
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int spa_ddt_stat_object; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int dmu_tx_t ;
struct TYPE_8__ {scalar_t__** ddt_object; int ** ddt_object_stats; int ** ddt_histogram; int * ddt_os; TYPE_1__* ddt_spa; } ;
typedef TYPE_2__ ddt_t ;
typedef int ddt_object_t ;
struct TYPE_9__ {scalar_t__ (* ddt_op_destroy ) (int *,scalar_t__,int *) ;} ;


 int ASSERT (int) ;
 int DDT_NAMELEN ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int VERIFY (int) ;
 int bzero (int *,int) ;
 int ddt_histogram_empty (int *) ;
 scalar_t__ ddt_object_count (TYPE_2__*,int,int,scalar_t__*) ;
 int ddt_object_name (TYPE_2__*,int,int,char*) ;
 TYPE_3__** ddt_ops ;
 scalar_t__ stub1 (int *,scalar_t__,int *) ;
 scalar_t__ zap_remove (int *,int ,char*,int *) ;

__attribute__((used)) static void
ddt_object_destroy(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    dmu_tx_t *tx)
{
 spa_t *spa = ddt->ddt_spa;
 objset_t *os = ddt->ddt_os;
 uint64_t *objectp = &ddt->ddt_object[type][class];
 uint64_t count;
 char name[DDT_NAMELEN];

 ddt_object_name(ddt, type, class, name);

 ASSERT(*objectp != 0);
 ASSERT(ddt_histogram_empty(&ddt->ddt_histogram[type][class]));
 VERIFY(ddt_object_count(ddt, type, class, &count) == 0 && count == 0);
 VERIFY(zap_remove(os, DMU_POOL_DIRECTORY_OBJECT, name, tx) == 0);
 VERIFY(zap_remove(os, spa->spa_ddt_stat_object, name, tx) == 0);
 VERIFY(ddt_ops[type]->ddt_op_destroy(os, *objectp, tx) == 0);
 bzero(&ddt->ddt_object_stats[type][class], sizeof (ddt_object_t));

 *objectp = 0;
}
