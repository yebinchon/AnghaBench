
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef void* uint64_t ;
typedef int pname ;
typedef int libzfs_handle_t ;
struct TYPE_7__ {char* name; void** redact_snap_guids; int * skip; void* num_redact_snaps; scalar_t__ bookmark_ok; void* guid; } ;
typedef TYPE_1__ guid_to_name_data_t ;
typedef scalar_t__ boolean_t ;


 int EEXIST ;
 int ENOENT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int guid_to_name_cb (int ,TYPE_1__*) ;
 int * make_dataset_handle (int *,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 void* strrchr (char*,char) ;
 int zfs_close (int *) ;
 int zfs_handle_dup (int *) ;
 int zfs_iter_bookmarks (int *,int (*) (int ,TYPE_1__*),TYPE_1__*) ;
 int zfs_iter_children (int *,int (*) (int ,TYPE_1__*),TYPE_1__*) ;

__attribute__((used)) static int
guid_to_name_redact_snaps(libzfs_handle_t *hdl, const char *parent,
    uint64_t guid, boolean_t bookmark_ok, uint64_t *redact_snap_guids,
    uint64_t num_redact_snaps, char *name)
{
 char pname[ZFS_MAX_DATASET_NAME_LEN];
 guid_to_name_data_t gtnd;

 gtnd.guid = guid;
 gtnd.bookmark_ok = bookmark_ok;
 gtnd.name = name;
 gtnd.skip = ((void*)0);
 gtnd.redact_snap_guids = redact_snap_guids;
 gtnd.num_redact_snaps = num_redact_snaps;







 (void) strlcpy(pname, parent, sizeof (pname));
 char *cp = strrchr(pname, '@');
 if (cp == ((void*)0))
  cp = strchr(pname, '\0');
 for (; cp != ((void*)0); cp = strrchr(pname, '/')) {

  *cp = '\0';
  zfs_handle_t *zhp = make_dataset_handle(hdl, pname);

  if (zhp == ((void*)0))
   continue;
  int err = guid_to_name_cb(zfs_handle_dup(zhp), &gtnd);
  if (err != EEXIST)
   err = zfs_iter_children(zhp, guid_to_name_cb, &gtnd);
  if (err != EEXIST && bookmark_ok)
   err = zfs_iter_bookmarks(zhp, guid_to_name_cb, &gtnd);
  zfs_close(zhp);
  if (err == EEXIST)
   return (0);






  gtnd.skip = strrchr(pname, '/') + 1;
 }

 return (ENOENT);
}
