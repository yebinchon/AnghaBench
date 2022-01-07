
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdb_cb_t ;
typedef int spa_t ;


 int iterate_deleted_livelists (int *,int ,int *) ;
 int livelist_count_blocks ;

__attribute__((used)) static void
deleted_livelists_count_blocks(spa_t *spa, zdb_cb_t *zbc)
{
 iterate_deleted_livelists(spa, livelist_count_blocks, zbc);
}
