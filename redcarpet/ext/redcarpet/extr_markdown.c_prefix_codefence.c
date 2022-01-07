
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static size_t
prefix_codefence(uint8_t *data, size_t size)
{
 size_t i = 0, n = 0;
 uint8_t c;


 if (size < 3) return 0;
 if (data[0] == ' ') { i++;
 if (data[1] == ' ') { i++;
 if (data[2] == ' ') { i++; } } }


 if (i + 2 >= size || !(data[i] == '~' || data[i] == '`'))
  return 0;

 c = data[i];


 while (i < size && data[i] == c) {
  n++; i++;
 }

 if (n < 3)
  return 0;

 return i;
}
