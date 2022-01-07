
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short bit_read_short(unsigned char *buf, int *offset)
{
 unsigned short val =
  (((unsigned short) buf[*offset] ) << 8)
 | ((unsigned short) buf[*offset+1]);
 *offset += 2;
 return val;
}
