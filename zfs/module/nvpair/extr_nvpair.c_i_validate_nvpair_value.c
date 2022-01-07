
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int data_type_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;


 int EINVAL ;

__attribute__((used)) static int
i_validate_nvpair_value(data_type_t type, uint_t nelem, const void *data)
{
 switch (type) {
 case 128:
  if (*(boolean_t *)data != B_TRUE &&
      *(boolean_t *)data != B_FALSE)
   return (EINVAL);
  break;
 case 129: {
  int i;

  for (i = 0; i < nelem; i++)
   if (((boolean_t *)data)[i] != B_TRUE &&
       ((boolean_t *)data)[i] != B_FALSE)
    return (EINVAL);
  break;
 }
 default:
  break;
 }

 return (0);
}
