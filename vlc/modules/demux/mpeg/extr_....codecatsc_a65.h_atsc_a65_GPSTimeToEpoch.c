
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ GPS_UTC_EPOCH_OFFSET ;

__attribute__((used)) static inline time_t atsc_a65_GPSTimeToEpoch( time_t i_seconds, time_t i_gpstoepoch_leaptime_offset )
{
    return i_seconds + GPS_UTC_EPOCH_OFFSET - i_gpstoepoch_leaptime_offset;
}
