
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nvs_op; scalar_t__ nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_5__ {scalar_t__ n_curr; scalar_t__ n_end; } ;
typedef TYPE_2__ nvs_native_t ;


 int EFAULT ;
 int EINVAL ;


 int bcopy (void*,void*,size_t) ;

__attribute__((used)) static int
native_cp(nvstream_t *nvs, void *buf, size_t size)
{
 nvs_native_t *native = (nvs_native_t *)nvs->nvs_private;

 if (native->n_curr + size > native->n_end)
  return (EFAULT);





 switch (nvs->nvs_op) {
 case 128:
  bcopy(buf, native->n_curr, size);
  break;
 case 129:
  bcopy(native->n_curr, buf, size);
  break;
 default:
  return (EINVAL);
 }

 native->n_curr += size;
 return (0);
}
