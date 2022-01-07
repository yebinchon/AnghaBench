
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_license ;
 int license_info_is_expired (int *) ;

bool
license_is_expired()
{
 return license_info_is_expired(&current_license);
}
