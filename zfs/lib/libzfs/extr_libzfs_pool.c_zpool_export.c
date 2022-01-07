
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int zpool_export_common (int *,int ,int ,char const*) ;

int
zpool_export(zpool_handle_t *zhp, boolean_t force, const char *log_str)
{
 return (zpool_export_common(zhp, force, B_FALSE, log_str));
}
