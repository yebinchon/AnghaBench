
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_prop_t ;
struct TYPE_4__ {int zpool_hdl; int zfs_type; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int EINVAL ;
 int TEXT_DOMAIN ;



 int ZFS_PROP_ZONED ;
 int dgettext (int ,char*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int zfs_error_aux (int ,int ) ;
 int zfs_name_to_prop (char const*) ;
 int zfs_prop_get_int (TYPE_1__*,int ) ;
 int * zfs_valid_proplist (int ,int ,int *,int ,int *,int ,int ,char*) ;

__attribute__((used)) static int
zfs_crypto_verify_rewrap_nvlist(zfs_handle_t *zhp, nvlist_t *props,
    nvlist_t **props_out, char *errbuf)
{
 int ret;
 nvpair_t *elem = ((void*)0);
 zfs_prop_t prop;
 nvlist_t *new_props = ((void*)0);

 new_props = fnvlist_alloc();






 while ((elem = nvlist_next_nvpair(props, elem)) != ((void*)0)) {
  const char *propname = nvpair_name(elem);
  prop = zfs_name_to_prop(propname);

  switch (prop) {
  case 128:
  case 130:
  case 129:
   break;
  default:
   ret = EINVAL;
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Only keyformat, keylocation and pbkdf2iters may "
       "be set with this command."));
   goto error;
  }
 }

 new_props = zfs_valid_proplist(zhp->zfs_hdl, zhp->zfs_type, props,
     zfs_prop_get_int(zhp, ZFS_PROP_ZONED), ((void*)0), zhp->zpool_hdl,
     B_TRUE, errbuf);
 if (new_props == ((void*)0)) {
  ret = EINVAL;
  goto error;
 }

 *props_out = new_props;
 return (0);

error:
 nvlist_free(new_props);
 *props_out = ((void*)0);
 return (ret);
}
