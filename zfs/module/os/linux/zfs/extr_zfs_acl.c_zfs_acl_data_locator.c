
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* cb_acl_node; TYPE_1__* cb_aclp; } ;
typedef TYPE_2__ zfs_acl_locator_cb_t ;
typedef int uint32_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int z_size; void* z_acldata; } ;
struct TYPE_6__ {int z_acl; } ;


 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;

void
zfs_acl_data_locator(void **dataptr, uint32_t *length, uint32_t buflen,
    boolean_t start, void *userdata)
{
 zfs_acl_locator_cb_t *cb = (zfs_acl_locator_cb_t *)userdata;

 if (start) {
  cb->cb_acl_node = list_head(&cb->cb_aclp->z_acl);
 } else {
  cb->cb_acl_node = list_next(&cb->cb_aclp->z_acl,
      cb->cb_acl_node);
 }
 *dataptr = cb->cb_acl_node->z_acldata;
 *length = cb->cb_acl_node->z_size;
}
