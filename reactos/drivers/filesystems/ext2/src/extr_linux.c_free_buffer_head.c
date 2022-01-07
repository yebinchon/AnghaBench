
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct buffer_head {scalar_t__ b_bcb; TYPE_2__* b_mdl; } ;
struct TYPE_5__ {int MappedSystemVa; int MdlFlags; } ;
struct TYPE_4__ {int bh_count; int bh_cache; } ;
typedef int ERESOURCE_THREAD ;


 int CcUnpinDataForThread (scalar_t__,int) ;
 int DEBUG (int ,char*) ;
 int DEC_MEM_COUNT (int ,struct buffer_head*,int) ;
 int DL_BH ;
 int Ext2DestroyMdl (TYPE_2__*) ;
 scalar_t__ IsFlagOn (int ,int ) ;
 int MDL_MAPPED_TO_SYSTEM_VA ;
 int MmUnmapLockedPages (int ,TYPE_2__*) ;
 int PS_BUFF_HEAD ;
 int atomic_dec (int *) ;
 TYPE_1__ g_jbh ;
 int kmem_cache_free (int ,struct buffer_head*) ;

void
free_buffer_head(struct buffer_head * bh)
{
    if (bh) {
        if (bh->b_mdl) {

            DEBUG(DL_BH, ("bh=%p mdl=%p (Flags:%xh VA:%p) released.\n", bh, bh->b_mdl,
                          bh->b_mdl->MdlFlags, bh->b_mdl->MappedSystemVa));
            if (IsFlagOn(bh->b_mdl->MdlFlags, MDL_MAPPED_TO_SYSTEM_VA)) {
                MmUnmapLockedPages(bh->b_mdl->MappedSystemVa, bh->b_mdl);
            }
            Ext2DestroyMdl(bh->b_mdl);
        }
        if (bh->b_bcb) {
            CcUnpinDataForThread(bh->b_bcb, (ERESOURCE_THREAD)bh | 0x3);
        }

        DEBUG(DL_BH, ("bh=%p freed.\n", bh));
        DEC_MEM_COUNT(PS_BUFF_HEAD, bh, sizeof(struct buffer_head));
        kmem_cache_free(g_jbh.bh_cache, bh);
        atomic_dec(&g_jbh.bh_count);
    }
}
