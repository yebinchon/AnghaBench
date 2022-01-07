
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_3__ {int end_time; } ;
typedef TYPE_1__ LicenseInfo ;


 int GetCurrentTransactionStartTimestamp () ;
 scalar_t__ timestamp_cmp_internal (int ,int ) ;

bool
license_info_is_expired(const LicenseInfo *license)
{
 TimestampTz current_time = GetCurrentTransactionStartTimestamp();

 return timestamp_cmp_internal(license->end_time, current_time) < 0;
}
