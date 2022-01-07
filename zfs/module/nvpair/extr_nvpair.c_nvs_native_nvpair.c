
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nvs_op; scalar_t__ nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_6__ {size_t n_curr; size_t n_end; } ;
typedef TYPE_2__ nvs_native_t ;
typedef int nvpair_t ;
typedef size_t int32_t ;


 int EFAULT ;
 int EINVAL ;


 int bcopy (size_t,size_t*,int) ;
 int nvs_native_nvp_op (TYPE_1__*,int *) ;

__attribute__((used)) static int
nvs_native_nvpair(nvstream_t *nvs, nvpair_t *nvp, size_t *size)
{
 switch (nvs->nvs_op) {
 case 128:
  return (nvs_native_nvp_op(nvs, nvp));

 case 129: {
  nvs_native_t *native = (nvs_native_t *)nvs->nvs_private;
  int32_t decode_len;


  if (native->n_curr + sizeof (int32_t) > native->n_end)
   return (EFAULT);
  bcopy(native->n_curr, &decode_len, sizeof (int32_t));


  if (decode_len < 0 ||
      decode_len > native->n_end - native->n_curr)
   return (EFAULT);

  *size = decode_len;






  if (*size == 0)
   native->n_curr += sizeof (int32_t);
  break;
 }

 default:
  return (EINVAL);
 }

 return (0);
}
