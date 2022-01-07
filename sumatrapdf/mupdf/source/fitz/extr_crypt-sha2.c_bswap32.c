
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int bswap32(unsigned int num)
{
 return ( (((num) << 24))
  | (((num) << 8) & 0x00FF0000)
  | (((num) >> 8) & 0x0000FF00)
  | (((num) >> 24)) );
}
