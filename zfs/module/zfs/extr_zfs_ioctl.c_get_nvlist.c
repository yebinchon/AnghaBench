
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int EFAULT ;
 int EINVAL ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 int ddi_copyin (void*,char*,scalar_t__,int) ;
 int nvlist_unpack (char*,scalar_t__,int **,int ) ;
 char* vmem_alloc (scalar_t__,int ) ;
 int vmem_free (char*,scalar_t__) ;

__attribute__((used)) static int
get_nvlist(uint64_t nvl, uint64_t size, int iflag, nvlist_t **nvp)
{
 char *packed;
 int error;
 nvlist_t *list = ((void*)0);




 if (size == 0)
  return (SET_ERROR(EINVAL));

 packed = vmem_alloc(size, KM_SLEEP);

 if ((error = ddi_copyin((void *)(uintptr_t)nvl, packed, size,
     iflag)) != 0) {
  vmem_free(packed, size);
  return (SET_ERROR(EFAULT));
 }

 if ((error = nvlist_unpack(packed, size, &list, 0)) != 0) {
  vmem_free(packed, size);
  return (error);
 }

 vmem_free(packed, size);

 *nvp = list;
 return (0);
}
