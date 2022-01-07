
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EINVAL ;
 int EOVERFLOW ;
 int SET_ERROR (int ) ;
 int SPEC_MAXOFFSET_T ;

int
zvol_check_volsize(uint64_t volsize, uint64_t blocksize)
{
 if (volsize == 0)
  return (SET_ERROR(EINVAL));

 if (volsize % blocksize != 0)
  return (SET_ERROR(EINVAL));





 return (0);
}
