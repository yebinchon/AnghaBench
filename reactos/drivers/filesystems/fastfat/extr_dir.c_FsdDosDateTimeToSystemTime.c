
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_10__ {scalar_t__ BaseDateYear; } ;
struct TYPE_9__ {scalar_t__ Year; int Month; int Day; } ;
struct TYPE_8__ {int Second; int Hour; int Minute; } ;
struct TYPE_7__ {int Second; scalar_t__ Year; int Month; int Day; int Hour; int Minute; scalar_t__ Milliseconds; } ;
typedef TYPE_1__ TIME_FIELDS ;
typedef int * PLARGE_INTEGER ;
typedef TYPE_2__* PDOSTIME ;
typedef TYPE_3__* PDOSDATE ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef int LARGE_INTEGER ;
typedef scalar_t__ CSHORT ;
typedef int BOOLEAN ;


 int ExLocalTimeToSystemTime (int *,int *) ;
 int FALSE ;
 int RtlTimeFieldsToTime (TYPE_1__*,int *) ;
 int TRUE ;

BOOLEAN
FsdDosDateTimeToSystemTime(
    PDEVICE_EXTENSION DeviceExt,
    USHORT DosDate,
    USHORT DosTime,
    PLARGE_INTEGER SystemTime)
{
    PDOSTIME pdtime = (PDOSTIME)&DosTime;
    PDOSDATE pddate = (PDOSDATE)&DosDate;
    TIME_FIELDS TimeFields;
    LARGE_INTEGER LocalTime;

    if (SystemTime == ((void*)0))
        return FALSE;

    TimeFields.Milliseconds = 0;
    TimeFields.Second = pdtime->Second * 2;
    TimeFields.Minute = pdtime->Minute;
    TimeFields.Hour = pdtime->Hour;

    TimeFields.Day = pddate->Day;
    TimeFields.Month = pddate->Month;
    TimeFields.Year = (CSHORT)(DeviceExt->BaseDateYear + pddate->Year);

    RtlTimeFieldsToTime(&TimeFields, &LocalTime);
    ExLocalTimeToSystemTime(&LocalTime, SystemTime);

    return TRUE;
}
