
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_share_type_t ;
typedef size_t zfs_share_proto_t ;
struct TYPE_4__ {int * libzfs_sharetab; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int buf ;
struct TYPE_5__ {char const* p_name; } ;


 int MAXPATHLEN ;


 int SEEK_SET ;
 int SHARED_NFS ;
 int SHARED_NOT_SHARED ;
 int SHARED_SMB ;
 int ZFS_SHARETAB ;
 int * fgets (char*,int,int *) ;
 int * freopen (int ,char*,int *) ;
 int fseek (int *,int ,int ) ;
 TYPE_2__* proto_table ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;

zfs_share_type_t
is_shared_impl(libzfs_handle_t *hdl, const char *mountpoint,
    zfs_share_proto_t proto)
{
 char buf[MAXPATHLEN], *tab;
 char *ptr;

 if (hdl->libzfs_sharetab == ((void*)0))
  return (SHARED_NOT_SHARED);


 if (freopen(ZFS_SHARETAB, "r", hdl->libzfs_sharetab) == ((void*)0))
  return (SHARED_NOT_SHARED);

 (void) fseek(hdl->libzfs_sharetab, 0, SEEK_SET);

 while (fgets(buf, sizeof (buf), hdl->libzfs_sharetab) != ((void*)0)) {


  if ((tab = strchr(buf, '\t')) == ((void*)0))
   continue;

  *tab = '\0';
  if (strcmp(buf, mountpoint) == 0) {




   ptr = ++tab;
   if ((tab = strchr(ptr, '\t')) == ((void*)0))
    continue;
   ptr = ++tab;
   if ((tab = strchr(ptr, '\t')) == ((void*)0))
    continue;
   *tab = '\0';
   if (strcmp(ptr,
       proto_table[proto].p_name) == 0) {
    switch (proto) {
    case 129:
     return (SHARED_NFS);
    case 128:
     return (SHARED_SMB);
    default:
     return (0);
    }
   }
  }
 }

 return (SHARED_NOT_SHARED);
}
