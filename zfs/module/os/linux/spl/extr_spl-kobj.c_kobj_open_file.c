
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct _buf {int * vp; } ;
typedef struct _buf _buf_t ;


 int FREAD ;
 int KM_SLEEP ;
 int UIO_SYSSPACE ;
 int kfree (struct _buf*) ;
 struct _buf* kmalloc (int,int ) ;
 int kmem_flags_convert (int ) ;
 int vn_open (char const*,int ,int ,int,int **,int ,int ) ;

struct _buf *
kobj_open_file(const char *name)
{
 struct _buf *file;
 vnode_t *vp;
 int rc;

 file = kmalloc(sizeof (_buf_t), kmem_flags_convert(KM_SLEEP));
 if (file == ((void*)0))
  return ((_buf_t *)-1UL);

 if ((rc = vn_open(name, UIO_SYSSPACE, FREAD, 0644, &vp, 0, 0))) {
  kfree(file);
  return ((_buf_t *)-1UL);
 }

 file->vp = vp;

 return (file);
}
