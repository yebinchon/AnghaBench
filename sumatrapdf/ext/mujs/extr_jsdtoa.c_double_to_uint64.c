
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int memcpy (int *,double*,int) ;

__attribute__((used)) static uint64_t double_to_uint64(double d)
{
 uint64_t n;
 memcpy(&n, &d, 8);
 return n;
}
