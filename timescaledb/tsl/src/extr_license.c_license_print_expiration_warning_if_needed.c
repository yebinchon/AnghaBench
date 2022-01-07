
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_5__ {int end_time; } ;
struct TYPE_4__ {int day; } ;
typedef TYPE_1__ Interval ;


 int DatumGetCString (int ) ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WARNING ;
 int GetCurrentTransactionStartTimestamp () ;
 int IntervalPGetDatum (TYPE_1__*) ;
 int TimestampTzGetDatum (int ) ;
 int WARNING ;
 TYPE_2__ current_license ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,...) ;
 scalar_t__ license_is_expired () ;
 int printed_license_expiration_warning ;
 scalar_t__ timestamp_cmp_internal (int ,int ) ;
 int timestamptz_mi_interval ;
 int timestamptz_out ;

void
license_print_expiration_warning_if_needed(void)
{
 if (printed_license_expiration_warning)
  return;

 printed_license_expiration_warning = 1;

 if (license_is_expired())
  ereport(WARNING,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("Timescale License expired"),
     errhint("Your license expired on %s. Renew your license to continue using "
       "enterprise features.",
       DatumGetCString(
        DirectFunctionCall1(timestamptz_out,
             TimestampTzGetDatum(current_license.end_time))))));
 else
 {
  Interval week = {
   .day = 7,
  };
  TimestampTz warn_after =
   DatumGetTimestampTz(DirectFunctionCall2(timestamptz_mi_interval,
             TimestampTzGetDatum(current_license.end_time),
             IntervalPGetDatum(&week)));

  if (timestamp_cmp_internal(GetCurrentTransactionStartTimestamp(), warn_after) >= 0)
   ereport(WARNING,
     (errcode(ERRCODE_WARNING),
      errmsg("your Timescale Enterprise License expires on %s",
       DatumGetCString(DirectFunctionCall1(timestamptz_out,
                TimestampTzGetDatum(
                 current_license.end_time))))));
 }
}
