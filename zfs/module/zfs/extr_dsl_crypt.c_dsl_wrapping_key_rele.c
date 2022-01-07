
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wk_refcnt; } ;
typedef TYPE_1__ dsl_wrapping_key_t ;


 int zfs_refcount_remove (int *,void*) ;

__attribute__((used)) static void
dsl_wrapping_key_rele(dsl_wrapping_key_t *wkey, void *tag)
{
 (void) zfs_refcount_remove(&wkey->wk_refcnt, tag);
}
