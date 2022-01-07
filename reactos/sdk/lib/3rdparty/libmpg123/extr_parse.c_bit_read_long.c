
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long bit_read_long(unsigned char *buf, int *offset)
{
 unsigned long val =
  (((unsigned long) buf[*offset]) << 24)
 | (((unsigned long) buf[*offset+1]) << 16)
 | (((unsigned long) buf[*offset+2]) << 8)
 | ((unsigned long) buf[*offset+3]);
 *offset += 4;
 return val;
}
