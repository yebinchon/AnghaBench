
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static size_t
prefix_quote(uint8_t *data, size_t size)
{
 size_t i = 0;
 if (i < size && data[i] == ' ') i++;
 if (i < size && data[i] == ' ') i++;
 if (i < size && data[i] == ' ') i++;

 if (i < size && data[i] == '>') {
  if (i + 1 < size && data[i + 1] == ' ')
   return i + 2;

  return i + 1;
 }

 return 0;
}
