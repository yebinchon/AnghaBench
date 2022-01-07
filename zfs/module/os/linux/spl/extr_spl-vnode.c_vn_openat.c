
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uio_seg_t ;


 int ASSERT (int) ;
 int ENOMEM ;
 int KM_SLEEP ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int kmem_flags_convert (int ) ;
 int * rootdir ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;
 int vn_open (char*,int ,int,int,int **,int,void*) ;

int
vn_openat(const char *path, uio_seg_t seg, int flags, int mode,
    vnode_t **vpp, int x1, void *x2, vnode_t *vp, int fd)
{
 char *realpath;
 int len, rc;

 ASSERT(vp == rootdir);

 len = strlen(path) + 2;
 realpath = kmalloc(len, kmem_flags_convert(KM_SLEEP));
 if (!realpath)
  return (ENOMEM);

 (void) snprintf(realpath, len, "/%s", path);
 rc = vn_open(realpath, seg, flags, mode, vpp, x1, x2);
 kfree(realpath);

 return (rc);
}
