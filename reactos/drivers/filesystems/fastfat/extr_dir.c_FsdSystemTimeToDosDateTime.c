
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_10__ {scalar_t__ BaseDateYear; } ;
struct TYPE_9__ {scalar_t__ Year; int Month; int Day; } ;
struct TYPE_8__ {int Second; int Hour; int Minute; } ;
struct TYPE_7__ {int Second; scalar_t__ Year; int Month; int Day; int Hour; int Minute; } ;
typedef TYPE_1__ TIME_FIELDS ;
typedef int PUSHORT ;
typedef int * PLARGE_INTEGER ;
typedef TYPE_2__* PDOSTIME ;
typedef TYPE_3__* PDOSDATE ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef int LARGE_INTEGER ;
typedef int BOOLEAN ;


 int ExSystemTimeToLocalTime (int *,int *) ;
 int FALSE ;
 int RtlTimeToTimeFields (int *,TYPE_1__*) ;
 int TRUE ;

BOOLEAN
FsdSystemTimeToDosDateTime(
    PDEVICE_EXTENSION DeviceExt,
    PLARGE_INTEGER SystemTime,
    PUSHORT pDosDate,
    PUSHORT pDosTime)
{
    PDOSTIME pdtime = (PDOSTIME)pDosTime;
    PDOSDATE pddate = (PDOSDATE)pDosDate;
    TIME_FIELDS TimeFields;
    LARGE_INTEGER LocalTime;

    if (SystemTime == ((void*)0))
        return FALSE;

    ExSystemTimeToLocalTime(SystemTime, &LocalTime);
    RtlTimeToTimeFields(&LocalTime, &TimeFields);

    if (pdtime)
    {
        pdtime->Second = TimeFields.Second / 2;
        pdtime->Minute = TimeFields.Minute;
        pdtime->Hour = TimeFields.Hour;
    }

    if (pddate)
    {
        pddate->Day = TimeFields.Day;
        pddate->Month = TimeFields.Month;
        pddate->Year = (USHORT) (TimeFields.Year - DeviceExt->BaseDateYear);
    }

    return TRUE;
}
