
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_feat_enabled_txg_obj; int spa_feat_desc_obj; int spa_feat_for_write_obj; int spa_feat_for_read_obj; int * spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;


 int B_TRUE ;
 int FTAG ;
 int SPA_FEATURE_ENABLED_TXG ;
 int dump_mos (TYPE_1__*) ;
 int dump_obj (int *,int ,char*) ;
 int fprintf (int ,char*) ;
 int spa_close (TYPE_1__*,int ) ;
 scalar_t__ spa_feature_is_active (TYPE_1__*,int ) ;
 int stderr ;
 int usage () ;
 int zhack_spa_open (char*,int ,int ,TYPE_1__**) ;

__attribute__((used)) static void
zhack_do_feature_stat(int argc, char **argv)
{
 spa_t *spa;
 objset_t *os;
 char *target;

 argc--;
 argv++;

 if (argc < 1) {
  (void) fprintf(stderr, "error: missing pool name\n");
  usage();
 }
 target = argv[0];

 zhack_spa_open(target, B_TRUE, FTAG, &spa);
 os = spa->spa_meta_objset;

 dump_obj(os, spa->spa_feat_for_read_obj, "for_read");
 dump_obj(os, spa->spa_feat_for_write_obj, "for_write");
 dump_obj(os, spa->spa_feat_desc_obj, "descriptions");
 if (spa_feature_is_active(spa, SPA_FEATURE_ENABLED_TXG)) {
  dump_obj(os, spa->spa_feat_enabled_txg_obj, "enabled_txg");
 }
 dump_mos(spa);

 spa_close(spa, FTAG);
}
