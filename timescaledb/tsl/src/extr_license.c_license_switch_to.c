
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LicenseInfo ;


 int Assert (int ) ;
 int current_license ;

void
license_switch_to(const LicenseInfo *license)
{
 Assert(license != ((void*)0));
 current_license = *license;
}
