
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int ds_hexsl ;
typedef int cred_t ;
typedef int bslabel_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int CRED () ;
 int CR_SL (int ) ;
 int DMU_OST_ZFS ;
 int EINVAL ;
 int ENOTSUP ;
 int EPERM ;
 scalar_t__ FALSE ;
 int INGLOBALZONE (int ) ;
 int MAXNAMELEN ;
 int PRIV_FILE_DOWNGRADE_SL ;
 int PRIV_FILE_UPGRADE_SL ;
 int PRIV_POLICY (int *,int,int ,int ,int *) ;
 int SET_ERROR (int ) ;
 scalar_t__ TRUE ;
 int ZFS_MLSLABEL_DEFAULT ;
 int ZFS_PROP_MLSLABEL ;
 int ZFS_PROP_ZONED ;
 int blequal (int *,int ) ;
 scalar_t__ blstrictdom (int *,int *) ;
 int curproc ;
 int dmu_objset_disown (int *,int ,char*) ;
 int dmu_objset_own (char const*,int ,int ,int ,char*,int **) ;
 int dsl_prop_get (char const*,int ,int,int,char**,int *) ;
 scalar_t__ dsl_prop_get_integer (char const*,int ,int *,int *) ;
 scalar_t__ hexstr_to_label (char*,int *) ;
 scalar_t__ strcasecmp (char*,int ) ;
 scalar_t__ zfs_check_global_label (char const*,char*) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
zfs_set_slabel_policy(const char *name, char *strval, cred_t *cr)
{
 return (SET_ERROR(ENOTSUP));

}
