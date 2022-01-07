
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Milliseconds; int Second; int Minute; int Hour; } ;
typedef TYPE_1__ TIME_FIELDS ;
typedef int LARGE_INTEGER ;


 int DPFLTR_ERROR_LEVEL ;
 int DPFLTR_IHVNETWORK_ID ;
 int DbgPrintEx (int ,int ,char*,...) ;
 int ExSystemTimeToLocalTime (int *,int *) ;
 int IoGetCurrentProcess () ;
 int KeQuerySystemTime (int *) ;
 int RtlTimeToTimeFields (int *,TYPE_1__*) ;

void print_hexbuf(int on, unsigned char *title, unsigned char *buf, int len)
{
    int j, k;
    LARGE_INTEGER timestamp, local_time;
    TIME_FIELDS time_fields;

    if (!on) return;

    KeQuerySystemTime(&timestamp);
    ExSystemTimeToLocalTime(&timestamp,&local_time);
    RtlTimeToTimeFields(&local_time, &time_fields);

    DbgPrintEx(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL,
        "[%ld].[%02u:%02u:%02u.%u] %s\n", IoGetCurrentProcess(),
        time_fields.Hour, time_fields.Minute, time_fields.Second,
        time_fields.Milliseconds, title);
    for(j = 0, k = 0; j < len; j++, k++) {
        DbgPrintEx(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL,
            "%02x ", buf[j]);
        if (((k+1) % 30 == 0 && k > 0))
            DbgPrintEx(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL, "\n");
    }
    DbgPrintEx(DPFLTR_IHVNETWORK_ID, DPFLTR_ERROR_LEVEL, "\n");
}
