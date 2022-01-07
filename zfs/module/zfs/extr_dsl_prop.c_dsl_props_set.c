
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int nvlist_t ;
struct TYPE_3__ {char const* dpsa_dsname; int dpsa_source; int * dpsa_props; } ;
typedef TYPE_1__ dsl_props_set_arg_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int ZPROP_SRC_NONE ;
 int dsl_props_set_check ;
 int dsl_props_set_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;
 int fnvlist_num_pairs (int *) ;

int
dsl_props_set(const char *dsname, zprop_source_t source, nvlist_t *props)
{
 dsl_props_set_arg_t dpsa;
 int nblks = 0;

 dpsa.dpsa_dsname = dsname;
 dpsa.dpsa_source = source;
 dpsa.dpsa_props = props;





 if ((source & ZPROP_SRC_NONE) == 0)
  nblks = 2 * fnvlist_num_pairs(props);

 return (dsl_sync_task(dsname, dsl_props_set_check, dsl_props_set_sync,
     &dpsa, nblks, ZFS_SPACE_CHECK_RESERVED));
}
