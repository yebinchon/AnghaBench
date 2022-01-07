
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zap_avl; } ;
struct TYPE_11__ {TYPE_1__ zap_m; } ;
typedef TYPE_2__ zap_t ;
struct TYPE_12__ {TYPE_2__* zn_zap; } ;
typedef TYPE_3__ zap_name_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_13__ {scalar_t__ mze_hash; scalar_t__ mze_cd; } ;
typedef TYPE_4__ mzap_ent_t ;
typedef int boolean_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 TYPE_4__* AVL_NEXT (int *,TYPE_4__*) ;
 int MZAP_ENT_CHUNKS ;
 int ZAP_LEAF_NUMCHUNKS_DEF ;
 TYPE_4__* avl_find (int *,TYPE_4__*,int *) ;

__attribute__((used)) static boolean_t
mze_canfit_fzap_leaf(zap_name_t *zn, uint64_t hash)
{
 zap_t *zap = zn->zn_zap;
 mzap_ent_t mze_tofind;
 mzap_ent_t *mze;
 avl_index_t idx;
 avl_tree_t *avl = &zap->zap_m.zap_avl;
 uint32_t mzap_ents = 0;

 mze_tofind.mze_hash = hash;
 mze_tofind.mze_cd = 0;

 for (mze = avl_find(avl, &mze_tofind, &idx);
     mze && mze->mze_hash == hash; mze = AVL_NEXT(avl, mze)) {
  mzap_ents++;
 }


 mzap_ents++;

 return (ZAP_LEAF_NUMCHUNKS_DEF > (mzap_ents * MZAP_ENT_CHUNKS));
}
