
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_arc_node; int b_freeze_lock; int b_refcnt; int b_cv; } ;
struct TYPE_5__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_2__ arc_buf_hdr_t ;


 int ARC_SPACE_HDRS ;
 int ASSERT (int) ;
 int HDR_EMPTY (TYPE_2__*) ;
 int HDR_FULL_SIZE ;
 int arc_space_return (int ,int ) ;
 int cv_destroy (int *) ;
 int multilist_link_active (int *) ;
 int mutex_destroy (int *) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
hdr_full_dest(void *vbuf, void *unused)
{
 arc_buf_hdr_t *hdr = vbuf;

 ASSERT(HDR_EMPTY(hdr));
 cv_destroy(&hdr->b_l1hdr.b_cv);
 zfs_refcount_destroy(&hdr->b_l1hdr.b_refcnt);
 mutex_destroy(&hdr->b_l1hdr.b_freeze_lock);
 ASSERT(!multilist_link_active(&hdr->b_l1hdr.b_arc_node));
 arc_space_return(HDR_FULL_SIZE, ARC_SPACE_HDRS);
}
