
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* zc_value; scalar_t__ zc_nvlist_src; scalar_t__ zc_nvlist_conf; char* zc_string; int zc_nvlist_dst_size; int zc_action_handle; int zc_obj; int zc_cookie; int zc_cleanup_fd; int zc_guid; int zc_begin_record; int zc_iflags; int zc_nvlist_conf_size; int zc_nvlist_src_size; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int tofs ;
typedef int nvlist_t ;
struct TYPE_7__ {int drr_begin; } ;
struct TYPE_9__ {TYPE_1__ drr_u; scalar_t__ drr_payloadlen; int drr_type; } ;
typedef TYPE_3__ dmu_replay_record_t ;


 int B_FALSE ;
 int DRR_BEGIN ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int get_nvlist (scalar_t__,int ,int ,int **) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_smush (int *,int ) ;
 scalar_t__ put_nvlist (TYPE_2__*,int *) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int zfs_ioc_recv_impl (char*,char*,char*,int *,int *,int *,int ,int ,int ,TYPE_3__*,int ,int *,int *,int *,int **) ;

__attribute__((used)) static int
zfs_ioc_recv(zfs_cmd_t *zc)
{
 dmu_replay_record_t begin_record;
 nvlist_t *errors = ((void*)0);
 nvlist_t *recvdprops = ((void*)0);
 nvlist_t *localprops = ((void*)0);
 char *origin = ((void*)0);
 char *tosnap;
 char tofs[ZFS_MAX_DATASET_NAME_LEN];
 int error = 0;

 if (dataset_namecheck(zc->zc_value, ((void*)0), ((void*)0)) != 0 ||
     strchr(zc->zc_value, '@') == ((void*)0) ||
     strchr(zc->zc_value, '%'))
  return (SET_ERROR(EINVAL));

 (void) strlcpy(tofs, zc->zc_value, sizeof (tofs));
 tosnap = strchr(tofs, '@');
 *tosnap++ = '\0';

 if (zc->zc_nvlist_src != 0 &&
     (error = get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &recvdprops)) != 0)
  return (error);

 if (zc->zc_nvlist_conf != 0 &&
     (error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &localprops)) != 0)
  return (error);

 if (zc->zc_string[0])
  origin = zc->zc_string;

 begin_record.drr_type = DRR_BEGIN;
 begin_record.drr_payloadlen = 0;
 begin_record.drr_u.drr_begin = zc->zc_begin_record;

 error = zfs_ioc_recv_impl(tofs, tosnap, origin, recvdprops, localprops,
     ((void*)0), zc->zc_guid, B_FALSE, zc->zc_cookie, &begin_record,
     zc->zc_cleanup_fd, &zc->zc_cookie, &zc->zc_obj,
     &zc->zc_action_handle, &errors);
 nvlist_free(recvdprops);
 nvlist_free(localprops);





 if (zc->zc_nvlist_dst_size != 0 && errors != ((void*)0) &&
     (nvlist_smush(errors, zc->zc_nvlist_dst_size) != 0 ||
     put_nvlist(zc, errors) != 0)) {




  error = SET_ERROR(EINVAL);
 }

 nvlist_free(errors);

 return (error);
}
