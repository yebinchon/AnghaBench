
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stime_t ;
typedef int int64_t ;



__attribute__((used)) static inline stime_t GetPESTimestamp( const uint8_t *p_data )
{
    return ((int64_t)(p_data[ 0]&0x0e ) << 29)|
             (int64_t)(p_data[1] << 22)|
            ((int64_t)(p_data[2]&0xfe) << 14)|
             (int64_t)(p_data[3] << 7)|
             (int64_t)(p_data[4] >> 1);
}
