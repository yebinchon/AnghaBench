
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 scalar_t__ is_next_headerline (char*,size_t) ;

__attribute__((used)) static size_t
prefix_oli(uint8_t *data, size_t size)
{
 size_t i = 0;

 if (i < size && data[i] == ' ') i++;
 if (i < size && data[i] == ' ') i++;
 if (i < size && data[i] == ' ') i++;

 if (i >= size || data[i] < '0' || data[i] > '9')
  return 0;

 while (i < size && data[i] >= '0' && data[i] <= '9')
  i++;

 if (i + 1 >= size || data[i] != '.' || data[i + 1] != ' ')
  return 0;

 if (is_next_headerline(data + i, size - i))
  return 0;

 return i + 2;
}
