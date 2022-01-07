
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static size_t
prefix_code(uint8_t *data, size_t size)
{
 if (size > 3 && data[0] == ' ' && data[1] == ' '
  && data[2] == ' ' && data[3] == ' ') return 4;

 return 0;
}
