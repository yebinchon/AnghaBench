
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void fromETMId( uint32_t i_etm_id, uint16_t *pi_vchannel, uint16_t *pi_event_id )
{
    *pi_vchannel = i_etm_id >> 16;
    *pi_event_id = (i_etm_id & 0xFFFF) >> 2;
}
