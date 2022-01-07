
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end_time; scalar_t__ enterprise_features_enabled; } ;


 int DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_WARNING ;
 int NOTICE ;
 int TIMESTAMP_NOT_FINITE (int ) ;
 TYPE_1__ current_license ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int license_print_expiration_warning_if_needed () ;
 int printed_license_expiration_warning ;
 int timestamptz_out ;

void
license_print_expiration_info(void)
{
 if (!TIMESTAMP_NOT_FINITE(current_license.end_time) &&
  current_license.enterprise_features_enabled)
 {
  ereport(NOTICE,
    (errcode(ERRCODE_WARNING),
     errmsg("your Timescale Enterprise License expires on %s",
      DatumGetCString(
       DirectFunctionCall1(timestamptz_out, current_license.end_time)))));
 }

 else
 {
  printed_license_expiration_warning = 0;
  license_print_expiration_warning_if_needed();
 }
}
