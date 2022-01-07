
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int nvs_op; } ;
typedef TYPE_1__ nvstream_t ;
typedef int nvpair_t ;
typedef int data_type_t ;
 int EINVAL ;
 int EMBEDDED_NVL (int *) ;
 int INT32_MAX ;
 char* NVP_NAME (int *) ;
 int NVP_NELEM (int *) ;
 int NVP_TYPE (int *) ;
 scalar_t__ NVP_VALUE (int *) ;
 int NVS_OP_GETSIZE ;
 int NV_ALIGN4 (int) ;
 int nvs_embedded_nvl_array (TYPE_1__*,int *,size_t*) ;
 int nvs_operation (TYPE_1__*,int ,size_t*) ;
 int strlen (char*) ;

__attribute__((used)) static int
nvs_xdr_nvp_size(nvstream_t *nvs, nvpair_t *nvp, size_t *size)
{
 data_type_t type = NVP_TYPE(nvp);




 uint64_t nvp_sz = 4 + 4 + 4 + NV_ALIGN4(strlen(NVP_NAME(nvp))) + 4 + 4;

 switch (type) {
 case 154:
  break;

 case 152:
 case 151:
 case 141:
 case 129:
 case 147:
 case 135:
 case 145:
 case 133:
  nvp_sz += 4;
  break;

 case 143:
 case 131:
 case 148:

 case 149:

  nvp_sz += 8;
  break;

 case 137:
  nvp_sz += 4 + NV_ALIGN4(strlen((char *)NVP_VALUE(nvp)));
  break;

 case 150:
  nvp_sz += NV_ALIGN4(NVP_NELEM(nvp));
  break;

 case 153:
 case 140:
 case 128:
 case 146:
 case 134:
 case 144:
 case 132:
  nvp_sz += 4 + 4 * (uint64_t)NVP_NELEM(nvp);
  break;

 case 142:
 case 130:
  nvp_sz += 4 + 8 * (uint64_t)NVP_NELEM(nvp);
  break;

 case 136: {
  int i;
  char **strs = (void *)NVP_VALUE(nvp);

  for (i = 0; i < NVP_NELEM(nvp); i++)
   nvp_sz += 4 + NV_ALIGN4(strlen(strs[i]));

  break;
 }

 case 139:
 case 138: {
  size_t nvsize = 0;
  int old_nvs_op = nvs->nvs_op;
  int err;

  nvs->nvs_op = NVS_OP_GETSIZE;
  if (type == 139)
   err = nvs_operation(nvs, EMBEDDED_NVL(nvp), &nvsize);
  else
   err = nvs_embedded_nvl_array(nvs, nvp, &nvsize);
  nvs->nvs_op = old_nvs_op;

  if (err != 0)
   return (EINVAL);

  nvp_sz += nvsize;
  break;
 }

 default:
  return (EINVAL);
 }

 if (nvp_sz > INT32_MAX)
  return (EINVAL);

 *size = nvp_sz;

 return (0);
}
