
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nvs_op; scalar_t__ nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_5__ {scalar_t__ n_curr; scalar_t__ n_end; } ;
typedef TYPE_2__ nvs_native_t ;


 int EFAULT ;
 scalar_t__ NVS_OP_ENCODE ;
 int bzero (scalar_t__,int) ;

__attribute__((used)) static int
nvs_native_nvl_fini(nvstream_t *nvs)
{
 if (nvs->nvs_op == NVS_OP_ENCODE) {
  nvs_native_t *native = (nvs_native_t *)nvs->nvs_private;




  if (native->n_curr + sizeof (int) > native->n_end)
   return (EFAULT);

  bzero(native->n_curr, sizeof (int));
  native->n_curr += sizeof (int);
 }

 return (0);
}
