
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32 ;



__attribute__((used)) static uint32 nbt_parse_uint32(unsigned char *buffer)
{
   return (buffer[0] << 24) + (buffer[1]<<16) + (buffer[2]<<8) + buffer[3];
}
