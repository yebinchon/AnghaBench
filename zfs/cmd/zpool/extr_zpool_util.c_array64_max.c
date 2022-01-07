
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MAX (int ,int ) ;

uint64_t
array64_max(uint64_t array[], unsigned int len)
{
 uint64_t max = 0;
 int i;
 for (i = 0; i < len; i++)
  max = MAX(max, array[i]);

 return (max);
}
