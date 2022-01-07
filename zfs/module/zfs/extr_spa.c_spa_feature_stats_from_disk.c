
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int za_first_integer; int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_6__ {int spa_feat_for_write_obj; int spa_meta_objset; int spa_feat_for_read_obj; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 int VERIFY0 (int ) ;
 int nvlist_add_uint64 (int *,int ,int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

__attribute__((used)) static void
spa_feature_stats_from_disk(spa_t *spa, nvlist_t *features)
{
 zap_cursor_t zc;
 zap_attribute_t za;

 if (spa->spa_feat_for_read_obj != 0) {
  for (zap_cursor_init(&zc, spa->spa_meta_objset,
      spa->spa_feat_for_read_obj);
      zap_cursor_retrieve(&zc, &za) == 0;
      zap_cursor_advance(&zc)) {
   ASSERT(za.za_integer_length == sizeof (uint64_t) &&
       za.za_num_integers == 1);
   VERIFY0(nvlist_add_uint64(features, za.za_name,
       za.za_first_integer));
  }
  zap_cursor_fini(&zc);
 }

 if (spa->spa_feat_for_write_obj != 0) {
  for (zap_cursor_init(&zc, spa->spa_meta_objset,
      spa->spa_feat_for_write_obj);
      zap_cursor_retrieve(&zc, &za) == 0;
      zap_cursor_advance(&zc)) {
   ASSERT(za.za_integer_length == sizeof (uint64_t) &&
       za.za_num_integers == 1);
   VERIFY0(nvlist_add_uint64(features, za.za_name,
       za.za_first_integer));
  }
  zap_cursor_fini(&zc);
 }
}
