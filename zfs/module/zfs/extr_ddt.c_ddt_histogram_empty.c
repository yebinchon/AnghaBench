
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ddt_histogram_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

boolean_t
ddt_histogram_empty(const ddt_histogram_t *ddh)
{
 const uint64_t *s = (const uint64_t *)ddh;
 const uint64_t *s_end = (const uint64_t *)(ddh + 1);

 while (s < s_end)
  if (*s++ != 0)
   return (B_FALSE);

 return (B_TRUE);
}
