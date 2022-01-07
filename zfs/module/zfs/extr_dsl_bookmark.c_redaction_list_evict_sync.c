
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rl_longholds; } ;
typedef TYPE_1__ redaction_list_t ;


 int kmem_free (TYPE_1__*,int) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
redaction_list_evict_sync(void *rlu)
{
 redaction_list_t *rl = rlu;
 zfs_refcount_destroy(&rl->rl_longholds);

 kmem_free(rl, sizeof (redaction_list_t));
}
