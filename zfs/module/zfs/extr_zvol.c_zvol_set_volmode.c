
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* zsda_name; int zsda_value; int zsda_source; } ;
typedef TYPE_1__ zvol_set_prop_int_arg_t ;
typedef int zprop_source_t ;
typedef int uint64_t ;


 int ZFS_SPACE_CHECK_NONE ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int ,int ) ;
 int zvol_set_volmode_check ;
 int zvol_set_volmode_sync ;

int
zvol_set_volmode(const char *ddname, zprop_source_t source, uint64_t volmode)
{
 zvol_set_prop_int_arg_t zsda;

 zsda.zsda_name = ddname;
 zsda.zsda_source = source;
 zsda.zsda_value = volmode;

 return (dsl_sync_task(ddname, zvol_set_volmode_check,
     zvol_set_volmode_sync, &zsda, 0, ZFS_SPACE_CHECK_NONE));
}
