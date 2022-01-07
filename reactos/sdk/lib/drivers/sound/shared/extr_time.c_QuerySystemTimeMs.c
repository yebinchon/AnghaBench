
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int KeQuerySystemTime (TYPE_1__*) ;

ULONG
QuerySystemTimeMs()
{
    LARGE_INTEGER Time;

    KeQuerySystemTime(&Time);

    Time.QuadPart /= 10000;

    return (ULONG) Time.QuadPart;
}
