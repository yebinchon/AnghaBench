
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {int b_ts_creat; int b_link; } ;
struct TYPE_2__ {int bh_acount; int bh_count; int bh_cache; } ;


 int DEBUG (int ,char*) ;
 int DL_BH ;
 int GFP_NOFS ;
 int INC_MEM_COUNT (int ,struct buffer_head*,int) ;
 int InitializeListHead (int *) ;
 int KeQuerySystemTime (int *) ;
 int PS_BUFF_HEAD ;
 int atomic_inc (int *) ;
 TYPE_1__ g_jbh ;
 struct buffer_head* kmem_cache_alloc (int ,int ) ;
 int memset (struct buffer_head*,int ,int) ;

struct buffer_head *
new_buffer_head()
{
    struct buffer_head * bh = ((void*)0);
    bh = kmem_cache_alloc(g_jbh.bh_cache, GFP_NOFS);
    if (bh) {
        atomic_inc(&g_jbh.bh_count);
        atomic_inc(&g_jbh.bh_acount);

        memset(bh, 0, sizeof(struct buffer_head));
        InitializeListHead(&bh->b_link);
        KeQuerySystemTime(&bh->b_ts_creat);
        DEBUG(DL_BH, ("bh=%p allocated.\n", bh));
        INC_MEM_COUNT(PS_BUFF_HEAD, bh, sizeof(struct buffer_head));
    }

    return bh;
}
