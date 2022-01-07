
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_10__ {int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_11__ {int * spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int objset_t ;
typedef int (* ll_iter_t ) (TYPE_3__*,void*) ;
struct TYPE_12__ {int * dl_os; } ;
typedef TYPE_3__ dsl_deadlist_t ;


 int ASSERT0 (int) ;
 int DMU_POOL_DELETED_CLONES ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int ENOENT ;
 int dsl_deadlist_close (TYPE_3__*) ;
 int dsl_deadlist_open (TYPE_3__*,int *,int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;

__attribute__((used)) static void
iterate_deleted_livelists(spa_t *spa, ll_iter_t func, void *arg)
{
 objset_t *mos = spa->spa_meta_objset;
 uint64_t zap_obj;
 int err = zap_lookup(mos, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1, &zap_obj);
 if (err == ENOENT)
  return;
 ASSERT0(err);

 zap_cursor_t zc;
 zap_attribute_t attr;
 dsl_deadlist_t ll;

 ll.dl_os = ((void*)0);
 for (zap_cursor_init(&zc, mos, zap_obj);
     zap_cursor_retrieve(&zc, &attr) == 0;
     (void) zap_cursor_advance(&zc)) {
  dsl_deadlist_open(&ll, mos, attr.za_first_integer);
  func(&ll, arg);
  dsl_deadlist_close(&ll);
 }
 zap_cursor_fini(&zc);
}
