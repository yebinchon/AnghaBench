
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8 ;
typedef int uint32 ;



void
buf_out_uint32(uint8 * buffer, uint32 value)
{
 buffer[0] = (value) & 0xff;
 buffer[1] = (value >> 8) & 0xff;
 buffer[2] = (value >> 16) & 0xff;
 buffer[3] = (value >> 24) & 0xff;
}
