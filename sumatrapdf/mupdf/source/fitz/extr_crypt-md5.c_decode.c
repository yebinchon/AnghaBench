
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void decode(unsigned int *output, const unsigned char *input, const unsigned len)
{
 unsigned i, j;

 for (i = 0, j = 0; j < len; i++, j += 4)
 {
  output[i] = ((unsigned int)input[j]) |
  (((unsigned int)input[j+1]) << 8) |
  (((unsigned int)input[j+2]) << 16) |
  (((unsigned int)input[j+3]) << 24);
 }
}
