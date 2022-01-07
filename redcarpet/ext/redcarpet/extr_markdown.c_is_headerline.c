
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static int
is_headerline(uint8_t *data, size_t size)
{
 size_t i = 0;


 if (data[i] == '=') {
  for (i = 1; i < size && data[i] == '='; i++);
  while (i < size && data[i] == ' ') i++;
  return (i >= size || data[i] == '\n') ? 1 : 0; }


 if (data[i] == '-') {
  for (i = 1; i < size && data[i] == '-'; i++);
  while (i < size && data[i] == ' ') i++;
  return (i >= size || data[i] == '\n') ? 2 : 0; }

 return 0;
}
