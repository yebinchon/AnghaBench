
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spc_refcnt; } ;
typedef TYPE_1__ scan_prefetch_ctx_t ;


 int zfs_refcount_add (int *,void*) ;

__attribute__((used)) static void
scan_prefetch_ctx_add_ref(scan_prefetch_ctx_t *spc, void *tag)
{
 zfs_refcount_add(&spc->spc_refcnt, tag);
}
