
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static size_t
is_empty(const uint8_t *data, size_t size)
{
 size_t i;

 for (i = 0; i < size && data[i] != '\n'; i++)
  if (data[i] != ' ')
   return 0;

 return i + 1;
}
