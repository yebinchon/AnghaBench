
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef int uchar_t ;
typedef int nvlist_t ;
typedef int dmu_replay_record_t ;
typedef int boolean_t ;


 int EINVAL ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 char* ZPOOL_HIDDEN_ARGS ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int fnvlist_lookup_int32 (int *,char*) ;
 char* fnvlist_lookup_string (int *,char*) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_byte_array (int *,char*,int **,int*) ;
 int nvlist_lookup_int32 (int *,char*,int*) ;
 int nvlist_lookup_nvlist (int *,char*,int **) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int nvlist_lookup_uint64 (int *,char*,int *) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int zfs_ioc_recv_impl (char*,char*,char*,int *,int *,int *,int ,int ,int,int *,int,int *,int *,int *,int **) ;

__attribute__((used)) static int
zfs_ioc_recv_new(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 dmu_replay_record_t *begin_record;
 uint_t begin_record_size;
 nvlist_t *errors = ((void*)0);
 nvlist_t *recvprops = ((void*)0);
 nvlist_t *localprops = ((void*)0);
 nvlist_t *hidden_args = ((void*)0);
 char *snapname;
 char *origin = ((void*)0);
 char *tosnap;
 char tofs[ZFS_MAX_DATASET_NAME_LEN];
 boolean_t force;
 boolean_t resumable;
 uint64_t action_handle = 0;
 uint64_t read_bytes = 0;
 uint64_t errflags = 0;
 int input_fd = -1;
 int cleanup_fd = -1;
 int error;

 snapname = fnvlist_lookup_string(innvl, "snapname");

 if (dataset_namecheck(snapname, ((void*)0), ((void*)0)) != 0 ||
     strchr(snapname, '@') == ((void*)0) ||
     strchr(snapname, '%'))
  return (SET_ERROR(EINVAL));

 (void) strcpy(tofs, snapname);
 tosnap = strchr(tofs, '@');
 *tosnap++ = '\0';

 error = nvlist_lookup_string(innvl, "origin", &origin);
 if (error && error != ENOENT)
  return (error);

 error = nvlist_lookup_byte_array(innvl, "begin_record",
     (uchar_t **)&begin_record, &begin_record_size);
 if (error != 0 || begin_record_size != sizeof (*begin_record))
  return (SET_ERROR(EINVAL));

 input_fd = fnvlist_lookup_int32(innvl, "input_fd");

 force = nvlist_exists(innvl, "force");
 resumable = nvlist_exists(innvl, "resumable");

 error = nvlist_lookup_int32(innvl, "cleanup_fd", &cleanup_fd);
 if (error && error != ENOENT)
  return (error);

 error = nvlist_lookup_uint64(innvl, "action_handle", &action_handle);
 if (error && error != ENOENT)
  return (error);


 error = nvlist_lookup_nvlist(innvl, "props", &recvprops);
 if (error && error != ENOENT)
  return (error);

 error = nvlist_lookup_nvlist(innvl, "localprops", &localprops);
 if (error && error != ENOENT)
  return (error);

 error = nvlist_lookup_nvlist(innvl, ZPOOL_HIDDEN_ARGS, &hidden_args);
 if (error && error != ENOENT)
  return (error);

 error = zfs_ioc_recv_impl(tofs, tosnap, origin, recvprops, localprops,
     hidden_args, force, resumable, input_fd, begin_record, cleanup_fd,
     &read_bytes, &errflags, &action_handle, &errors);

 fnvlist_add_uint64(outnvl, "read_bytes", read_bytes);
 fnvlist_add_uint64(outnvl, "error_flags", errflags);
 fnvlist_add_uint64(outnvl, "action_handle", action_handle);
 fnvlist_add_nvlist(outnvl, "errors", errors);

 nvlist_free(errors);
 nvlist_free(recvprops);
 nvlist_free(localprops);

 return (error);
}
