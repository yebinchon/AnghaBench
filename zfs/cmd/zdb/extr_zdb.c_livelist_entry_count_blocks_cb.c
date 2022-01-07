
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdb_cb_t ;
struct TYPE_3__ {int dle_bpobj; } ;
typedef TYPE_1__ dsl_deadlist_entry_t ;
typedef int bplist_t ;


 int VERIFY0 (int ) ;
 int bplist_create (int *) ;
 int bplist_destroy (int *) ;
 int bplist_iterate (int *,int ,int *,int *) ;
 int count_block_cb ;
 int dsl_process_sub_livelist (int *,int *,int *,int *) ;

__attribute__((used)) static int
livelist_entry_count_blocks_cb(void *args, dsl_deadlist_entry_t *dle)
{
 zdb_cb_t *zbc = args;
 bplist_t blks;
 bplist_create(&blks);

 VERIFY0(dsl_process_sub_livelist(&dle->dle_bpobj, &blks, ((void*)0), ((void*)0)));

 (void) bplist_iterate(&blks, count_block_cb, zbc, ((void*)0));
 bplist_destroy(&blks);
 return (0);
}
