
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MINORBITS ;
 int MKDEV (int ,int ) ;
 int ZVOL_DRIVER ;
 int blk_unregister_region (int ,unsigned long) ;
 int ida_destroy (int *) ;
 int taskq_destroy (int ) ;
 int unregister_blkdev (int ,int ) ;
 int zvol_fini_impl () ;
 int zvol_ida ;
 int zvol_major ;
 int zvol_taskq ;

void
zvol_fini(void)
{
 zvol_fini_impl();
 blk_unregister_region(MKDEV(zvol_major, 0), 1UL << MINORBITS);
 unregister_blkdev(zvol_major, ZVOL_DRIVER);
 taskq_destroy(zvol_taskq);
 ida_destroy(&zvol_ida);
}
