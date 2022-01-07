
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int QuadPart; scalar_t__ HighPart; int LowPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int TIMEQ_FOREVER ;

__attribute__((used)) static
ULONG
DeltaTimeToSeconds(LARGE_INTEGER DeltaTime)
{
    LARGE_INTEGER Seconds;

    if (DeltaTime.QuadPart == 0)
        return 0;

    Seconds.QuadPart = -DeltaTime.QuadPart / 10000000;

    if (Seconds.HighPart != 0)
        return TIMEQ_FOREVER;

    return Seconds.LowPart;
}
