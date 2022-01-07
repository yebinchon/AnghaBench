
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int read_value(const unsigned char *data, int bytes, int is_big_endian)
{
 int value = 0;
 if (!is_big_endian)
  data += bytes;
 for (; bytes > 0; bytes--)
  value = (value << 8) | (is_big_endian ? *data++ : *--data);
 return value;
}
