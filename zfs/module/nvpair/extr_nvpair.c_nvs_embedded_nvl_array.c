
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_5__ {int nvs_op; } ;
typedef TYPE_1__ nvstream_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int EFAULT ;
 int EINVAL ;
 int ** EMBEDDED_NVL_ARRAY (int *) ;
 size_t INT32_MAX ;
 size_t NVP_NELEM (int *) ;



 int bzero (int **,size_t) ;
 int nvpair_free (int *) ;
 int nvs_embedded (TYPE_1__*,int *) ;
 int nvs_operation (TYPE_1__*,int *,size_t*) ;

__attribute__((used)) static int
nvs_embedded_nvl_array(nvstream_t *nvs, nvpair_t *nvp, size_t *size)
{
 size_t nelem = NVP_NELEM(nvp);
 nvlist_t **nvlp = EMBEDDED_NVL_ARRAY(nvp);
 int i;

 switch (nvs->nvs_op) {
 case 129:
  for (i = 0; i < nelem; i++)
   if (nvs_embedded(nvs, nvlp[i]) != 0)
    return (EFAULT);
  break;

 case 130: {
  size_t len = nelem * sizeof (uint64_t);
  nvlist_t *embedded = (nvlist_t *)((uintptr_t)nvlp + len);

  bzero(nvlp, len);
  for (i = 0; i < nelem; i++) {
   if (nvs_embedded(nvs, embedded) != 0) {
    nvpair_free(nvp);
    return (EFAULT);
   }

   nvlp[i] = embedded++;
  }
  break;
 }
 case 128: {
  uint64_t nvsize = 0;

  for (i = 0; i < nelem; i++) {
   size_t nvp_sz = 0;

   if (nvs_operation(nvs, nvlp[i], &nvp_sz) != 0)
    return (EINVAL);

   if ((nvsize += nvp_sz) > INT32_MAX)
    return (EINVAL);
  }

  *size = nvsize;
  break;
 }
 default:
  return (EINVAL);
 }

 return (0);
}
