
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int b_arc_node; int b_freeze_lock; int b_refcnt; int b_cv; int b_byteswap; } ;
struct TYPE_5__ {int b_l2node; } ;
struct TYPE_7__ {TYPE_2__ b_l1hdr; TYPE_1__ b_l2hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;


 int ARC_SPACE_HDRS ;
 int CV_DEFAULT ;
 int DMU_BSWAP_NUMFUNCS ;
 int HDR_FULL_SIZE ;
 int MUTEX_DEFAULT ;
 int arc_space_consume (int ,int ) ;
 int bzero (TYPE_3__*,int ) ;
 int cv_init (int *,int *,int ,int *) ;
 int list_link_init (int *) ;
 int multilist_link_init (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static int
hdr_full_cons(void *vbuf, void *unused, int kmflag)
{
 arc_buf_hdr_t *hdr = vbuf;

 bzero(hdr, HDR_FULL_SIZE);
 hdr->b_l1hdr.b_byteswap = DMU_BSWAP_NUMFUNCS;
 cv_init(&hdr->b_l1hdr.b_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 zfs_refcount_create(&hdr->b_l1hdr.b_refcnt);
 mutex_init(&hdr->b_l1hdr.b_freeze_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 list_link_init(&hdr->b_l1hdr.b_arc_node);
 list_link_init(&hdr->b_l2hdr.b_l2node);
 multilist_link_init(&hdr->b_l1hdr.b_arc_node);
 arc_space_consume(HDR_FULL_SIZE, ARC_SPACE_HDRS);

 return (0);
}
