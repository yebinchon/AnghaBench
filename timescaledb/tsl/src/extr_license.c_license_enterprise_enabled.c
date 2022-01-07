
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enterprise_features_enabled; } ;


 TYPE_1__ current_license ;

bool
license_enterprise_enabled(void)
{
 return current_license.enterprise_features_enabled;
}
