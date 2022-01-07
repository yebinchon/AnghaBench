
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* member_0; char* zc_name; void* zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int tryname ;
struct TYPE_11__ {scalar_t__ verbose; scalar_t__ isprefix; int force; scalar_t__ dryrun; } ;
typedef TYPE_2__ recvflags_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int name ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;
typedef int avl_tree_t ;


 int B_FALSE ;
 void* B_TRUE ;
 scalar_t__ ENOENT ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZFS_IOC_SET_PROP ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int created_before (int *,int *,scalar_t__,scalar_t__) ;
 int fsavl_destroy (int *) ;
 int * fsavl_find (int *,scalar_t__,char**) ;
 int gather_nvlist (int *,char const*,char*,int *,int,void*,int,int,int,int,int,void*,int **,int **) ;
 scalar_t__ nvlist_add_boolean (int *,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_exists (int *,char*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_boolean (int *,char*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,scalar_t__*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ nvpair_value_uint64 (int *,scalar_t__*) ;
 int printf (char*,...) ;
 int recv_destroy (int *,char*,scalar_t__,char*,TYPE_2__*) ;
 int recv_promote (int *,char*,char*,TYPE_2__*) ;
 int recv_rename (int *,char*,char*,scalar_t__,char*,TYPE_2__*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sprintf (char*,char*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char*,char) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 scalar_t__ zcmd_write_src_nvlist (int *,TYPE_1__*,int *) ;
 int zfs_ioctl (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int
recv_incremental_replication(libzfs_handle_t *hdl, const char *tofs,
    recvflags_t *flags, nvlist_t *stream_nv, avl_tree_t *stream_avl,
    nvlist_t *renamed)
{
 nvlist_t *local_nv, *deleted = ((void*)0);
 avl_tree_t *local_avl;
 nvpair_t *fselem, *nextfselem;
 char *fromsnap;
 char newname[ZFS_MAX_DATASET_NAME_LEN];
 char guidname[32];
 int error;
 boolean_t needagain, progress, recursive;
 char *s1, *s2;

 VERIFY(0 == nvlist_lookup_string(stream_nv, "fromsnap", &fromsnap));

 recursive = (nvlist_lookup_boolean(stream_nv, "not_recursive") ==
     ENOENT);

 if (flags->dryrun)
  return (0);

again:
 needagain = progress = B_FALSE;

 VERIFY(0 == nvlist_alloc(&deleted, NV_UNIQUE_NAME, 0));

 if ((error = gather_nvlist(hdl, tofs, fromsnap, ((void*)0),
     recursive, B_TRUE, B_FALSE, recursive, B_FALSE, B_FALSE,
     B_FALSE, B_TRUE, &local_nv, &local_avl)) != 0)
  return (error);




 for (fselem = nvlist_next_nvpair(local_nv, ((void*)0));
     fselem; fselem = nextfselem) {
  nvlist_t *nvfs, *snaps;
  nvlist_t *stream_nvfs = ((void*)0);
  nvpair_t *snapelem, *nextsnapelem;
  uint64_t fromguid = 0;
  uint64_t originguid = 0;
  uint64_t stream_originguid = 0;
  uint64_t parent_fromsnap_guid, stream_parent_fromsnap_guid;
  char *fsname, *stream_fsname;

  nextfselem = nvlist_next_nvpair(local_nv, fselem);

  VERIFY(0 == nvpair_value_nvlist(fselem, &nvfs));
  VERIFY(0 == nvlist_lookup_nvlist(nvfs, "snaps", &snaps));
  VERIFY(0 == nvlist_lookup_string(nvfs, "name", &fsname));
  VERIFY(0 == nvlist_lookup_uint64(nvfs, "parentfromsnap",
      &parent_fromsnap_guid));
  (void) nvlist_lookup_uint64(nvfs, "origin", &originguid);





  for (snapelem = nvlist_next_nvpair(snaps, ((void*)0));
      snapelem; snapelem = nvlist_next_nvpair(snaps, snapelem)) {
   uint64_t thisguid;

   VERIFY(0 == nvpair_value_uint64(snapelem, &thisguid));
   stream_nvfs = fsavl_find(stream_avl, thisguid, ((void*)0));

   if (stream_nvfs != ((void*)0))
    break;
  }


  (void) nvlist_lookup_uint64(stream_nvfs, "origin",
      &stream_originguid);
  if (stream_nvfs && originguid != stream_originguid) {
   switch (created_before(hdl, local_avl,
       stream_originguid, originguid)) {
   case 1: {

    nvlist_t *origin_nvfs;
    char *origin_fsname;

    origin_nvfs = fsavl_find(local_avl, originguid,
        ((void*)0));
    VERIFY(0 == nvlist_lookup_string(origin_nvfs,
        "name", &origin_fsname));
    error = recv_promote(hdl, fsname, origin_fsname,
        flags);
    if (error == 0)
     progress = B_TRUE;
    break;
   }
   default:
    break;
   case -1:
    fsavl_destroy(local_avl);
    nvlist_free(local_nv);
    return (-1);
   }





   needagain = B_TRUE;
   continue;
  }

  for (snapelem = nvlist_next_nvpair(snaps, ((void*)0));
      snapelem; snapelem = nextsnapelem) {
   uint64_t thisguid;
   char *stream_snapname;
   nvlist_t *found, *props;

   nextsnapelem = nvlist_next_nvpair(snaps, snapelem);

   VERIFY(0 == nvpair_value_uint64(snapelem, &thisguid));
   found = fsavl_find(stream_avl, thisguid,
       &stream_snapname);


   if (found == ((void*)0)) {
    char name[ZFS_MAX_DATASET_NAME_LEN];

    if (!flags->force)
     continue;

    (void) snprintf(name, sizeof (name), "%s@%s",
        fsname, nvpair_name(snapelem));

    error = recv_destroy(hdl, name,
        strlen(fsname)+1, newname, flags);
    if (error)
     needagain = B_TRUE;
    else
     progress = B_TRUE;
    sprintf(guidname, "%llu",
        (u_longlong_t)thisguid);
    nvlist_add_boolean(deleted, guidname);
    continue;
   }

   stream_nvfs = found;

   if (0 == nvlist_lookup_nvlist(stream_nvfs, "snapprops",
       &props) && 0 == nvlist_lookup_nvlist(props,
       stream_snapname, &props)) {
    zfs_cmd_t zc = {"\0"};

    zc.zc_cookie = B_TRUE;
    (void) snprintf(zc.zc_name, sizeof (zc.zc_name),
        "%s@%s", fsname, nvpair_name(snapelem));
    if (zcmd_write_src_nvlist(hdl, &zc,
        props) == 0) {
     (void) zfs_ioctl(hdl,
         ZFS_IOC_SET_PROP, &zc);
     zcmd_free_nvlists(&zc);
    }
   }


   if (strcmp(nvpair_name(snapelem),
       stream_snapname) != 0) {
    char name[ZFS_MAX_DATASET_NAME_LEN];
    char tryname[ZFS_MAX_DATASET_NAME_LEN];

    (void) snprintf(name, sizeof (name), "%s@%s",
        fsname, nvpair_name(snapelem));
    (void) snprintf(tryname, sizeof (name), "%s@%s",
        fsname, stream_snapname);

    error = recv_rename(hdl, name, tryname,
        strlen(fsname)+1, newname, flags);
    if (error)
     needagain = B_TRUE;
    else
     progress = B_TRUE;
   }

   if (strcmp(stream_snapname, fromsnap) == 0)
    fromguid = thisguid;
  }


  if (stream_nvfs == ((void*)0)) {
   if (!flags->force)
    continue;

   error = recv_destroy(hdl, fsname, strlen(tofs)+1,
       newname, flags);
   if (error)
    needagain = B_TRUE;
   else
    progress = B_TRUE;
   sprintf(guidname, "%llu",
       (u_longlong_t)parent_fromsnap_guid);
   nvlist_add_boolean(deleted, guidname);
   continue;
  }

  if (fromguid == 0) {
   if (flags->verbose) {
    (void) printf("local fs %s does not have "
        "fromsnap (%s in stream); must have "
        "been deleted locally; ignoring\n",
        fsname, fromsnap);
   }
   continue;
  }

  VERIFY(0 == nvlist_lookup_string(stream_nvfs,
      "name", &stream_fsname));
  VERIFY(0 == nvlist_lookup_uint64(stream_nvfs,
      "parentfromsnap", &stream_parent_fromsnap_guid));

  s1 = strrchr(fsname, '/');
  s2 = strrchr(stream_fsname, '/');
  if (stream_parent_fromsnap_guid != 0 &&
      parent_fromsnap_guid != 0 &&
      stream_parent_fromsnap_guid != parent_fromsnap_guid) {
   sprintf(guidname, "%llu",
       (u_longlong_t)parent_fromsnap_guid);
   if (nvlist_exists(deleted, guidname)) {
    progress = B_TRUE;
    needagain = B_TRUE;
    goto doagain;
   }
  }






  if ((stream_parent_fromsnap_guid != 0 &&
      parent_fromsnap_guid != 0 &&
      stream_parent_fromsnap_guid != parent_fromsnap_guid) ||
      ((flags->isprefix || strcmp(tofs, fsname) != 0) &&
      (s1 != ((void*)0)) && (s2 != ((void*)0)) && strcmp(s1, s2) != 0)) {
   nvlist_t *parent;
   char tryname[ZFS_MAX_DATASET_NAME_LEN];

   parent = fsavl_find(local_avl,
       stream_parent_fromsnap_guid, ((void*)0));







   if (parent != ((void*)0)) {
    char *pname;

    VERIFY(0 == nvlist_lookup_string(parent, "name",
        &pname));
    (void) snprintf(tryname, sizeof (tryname),
        "%s%s", pname, strrchr(stream_fsname, '/'));
   } else {
    tryname[0] = '\0';
    if (flags->verbose) {
     (void) printf("local fs %s new parent "
         "not found\n", fsname);
    }
   }

   newname[0] = '\0';

   error = recv_rename(hdl, fsname, tryname,
       strlen(tofs)+1, newname, flags);

   if (renamed != ((void*)0) && newname[0] != '\0') {
    VERIFY(0 == nvlist_add_boolean(renamed,
        newname));
   }

   if (error)
    needagain = B_TRUE;
   else
    progress = B_TRUE;
  }
 }

doagain:
 fsavl_destroy(local_avl);
 nvlist_free(local_nv);
 nvlist_free(deleted);

 if (needagain && progress) {

  if (flags->verbose)
   (void) printf("another pass:\n");
  goto again;
 }

 return (needagain || error != 0);
}
