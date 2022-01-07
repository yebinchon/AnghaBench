
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int StandardBias; int DaylightBias; int DaylightDate; int StandardDate; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef int LONG ;
typedef int DWORD ;





 int memcmp (int *,int *,int) ;
 int trace (char*,int) ;

__attribute__((used)) static LONG get_tz_bias(const TIME_ZONE_INFORMATION *tzinfo, DWORD tz_id)
{
    switch (tz_id)
    {
    case 130:
        if (memcmp(&tzinfo->StandardDate, &tzinfo->DaylightDate, sizeof(tzinfo->DaylightDate)) != 0)
            return tzinfo->DaylightBias;


    case 129:
        return tzinfo->StandardBias;

    default:
        trace("unknown time zone id %d\n", tz_id);

    case 128:
        return 0;
    }
}
