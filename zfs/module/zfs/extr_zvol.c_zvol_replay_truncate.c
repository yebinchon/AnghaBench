
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int uint64_t ;
struct TYPE_5__ {int lr_length; int lr_offset; } ;
typedef TYPE_2__ lr_truncate_t ;
typedef scalar_t__ boolean_t ;


 int ZVOL_OBJ ;
 int byteswap_uint64_array (TYPE_2__*,int) ;
 int dmu_free_long_range (int ,int ,int ,int ) ;

__attribute__((used)) static int
zvol_replay_truncate(void *arg1, void *arg2, boolean_t byteswap)
{
 zvol_state_t *zv = arg1;
 lr_truncate_t *lr = arg2;
 uint64_t offset, length;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 offset = lr->lr_offset;
 length = lr->lr_length;

 return (dmu_free_long_range(zv->zv_objset, ZVOL_OBJ, offset, length));
}
