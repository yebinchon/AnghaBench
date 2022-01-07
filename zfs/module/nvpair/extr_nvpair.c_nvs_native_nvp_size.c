
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int nvstream_t ;
struct TYPE_6__ {size_t nvp_size; } ;
typedef TYPE_1__ nvpair_t ;




 int EINVAL ;
 int EMBEDDED_NVL (TYPE_1__*) ;
 size_t INT32_MAX ;
 int NVP_TYPE (TYPE_1__*) ;
 int nvs_embedded_nvl_array (int *,TYPE_1__*,size_t*) ;
 int nvs_operation (int *,int ,size_t*) ;

__attribute__((used)) static int
nvs_native_nvp_size(nvstream_t *nvs, nvpair_t *nvp, size_t *size)
{
 uint64_t nvp_sz = nvp->nvp_size;

 switch (NVP_TYPE(nvp)) {
 case 129: {
  size_t nvsize = 0;

  if (nvs_operation(nvs, EMBEDDED_NVL(nvp), &nvsize) != 0)
   return (EINVAL);

  nvp_sz += nvsize;
  break;
 }
 case 128: {
  size_t nvsize;

  if (nvs_embedded_nvl_array(nvs, nvp, &nvsize) != 0)
   return (EINVAL);

  nvp_sz += nvsize;
  break;
 }
 default:
  break;
 }

 if (nvp_sz > INT32_MAX)
  return (EINVAL);

 *size = nvp_sz;

 return (0);
}
