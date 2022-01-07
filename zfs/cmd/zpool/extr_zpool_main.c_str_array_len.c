
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;



__attribute__((used)) static uint64_t
str_array_len(const char *array[])
{
 uint64_t i = 0;
 while (array[i])
  i++;

 return (i);
}
