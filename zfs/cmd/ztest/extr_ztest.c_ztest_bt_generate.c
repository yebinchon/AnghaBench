
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* bt_crtxg; void* bt_txg; void* bt_gen; void* bt_offset; void* bt_dnodesize; void* bt_object; int bt_objset; int bt_magic; } ;
typedef TYPE_1__ ztest_block_tag_t ;
typedef void* uint64_t ;
typedef int objset_t ;


 int BT_MAGIC ;
 int dmu_objset_id (int *) ;

__attribute__((used)) static void
ztest_bt_generate(ztest_block_tag_t *bt, objset_t *os, uint64_t object,
    uint64_t dnodesize, uint64_t offset, uint64_t gen, uint64_t txg,
    uint64_t crtxg)
{
 bt->bt_magic = BT_MAGIC;
 bt->bt_objset = dmu_objset_id(os);
 bt->bt_object = object;
 bt->bt_dnodesize = dnodesize;
 bt->bt_offset = offset;
 bt->bt_gen = gen;
 bt->bt_txg = txg;
 bt->bt_crtxg = crtxg;
}
