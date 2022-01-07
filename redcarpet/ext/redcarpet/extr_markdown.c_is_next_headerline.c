
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int is_headerline (char*,size_t) ;

__attribute__((used)) static int
is_next_headerline(uint8_t *data, size_t size)
{
 size_t i = 0;

 while (i < size && data[i] != '\n')
  i++;

 if (++i >= size)
  return 0;

 return is_headerline(data + i, size - i);
}
