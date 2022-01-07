
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint32_t toETMId( uint16_t i_vchannel, uint16_t i_event_id )
{
    return (i_vchannel << 16) | (i_event_id << 2) | 0x02;
}
