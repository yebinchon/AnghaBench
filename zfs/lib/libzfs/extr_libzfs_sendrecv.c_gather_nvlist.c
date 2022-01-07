
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {char const* fsname; char const* fromsnap; char const* tosnap; int * fss; void* props; void* holds; void* backup; void* verbose; void* replicate; void* doall; void* raw; void* recursive; int member_0; } ;
typedef TYPE_1__ send_data_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef void* boolean_t ;
typedef int avl_tree_t ;


 int EZFS_BADTYPE ;
 int EZFS_NOMEM ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int * fsavl_create (int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int send_iterate_fs (int *,TYPE_1__*) ;
 int * zfs_open (int *,char const*,int) ;

__attribute__((used)) static int
gather_nvlist(libzfs_handle_t *hdl, const char *fsname, const char *fromsnap,
    const char *tosnap, boolean_t recursive, boolean_t raw, boolean_t doall,
    boolean_t replicate, boolean_t verbose, boolean_t backup, boolean_t holds,
    boolean_t props, nvlist_t **nvlp, avl_tree_t **avlp)
{
 zfs_handle_t *zhp;
 send_data_t sd = { 0 };
 int error;

 zhp = zfs_open(hdl, fsname, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
 if (zhp == ((void*)0))
  return (EZFS_BADTYPE);

 VERIFY(0 == nvlist_alloc(&sd.fss, NV_UNIQUE_NAME, 0));
 sd.fsname = fsname;
 sd.fromsnap = fromsnap;
 sd.tosnap = tosnap;
 sd.recursive = recursive;
 sd.raw = raw;
 sd.doall = doall;
 sd.replicate = replicate;
 sd.verbose = verbose;
 sd.backup = backup;
 sd.holds = holds;
 sd.props = props;

 if ((error = send_iterate_fs(zhp, &sd)) != 0) {
  nvlist_free(sd.fss);
  if (avlp != ((void*)0))
   *avlp = ((void*)0);
  *nvlp = ((void*)0);
  return (error);
 }

 if (avlp != ((void*)0) && (*avlp = fsavl_create(sd.fss)) == ((void*)0)) {
  nvlist_free(sd.fss);
  *nvlp = ((void*)0);
  return (EZFS_NOMEM);
 }

 *nvlp = sd.fss;
 return (0);
}
