
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_size; } ;
typedef TYPE_1__ vattr_t ;
typedef int uint64_t ;
struct _buf {int vp; } ;


 int VOP_GETATTR (int ,TYPE_1__*,int ,int ,int *) ;

int
kobj_get_filesize(struct _buf *file, uint64_t *size)
{
 vattr_t vap;
 int rc;

 rc = VOP_GETATTR(file->vp, &vap, 0, 0, ((void*)0));
 if (rc)
  return (rc);

 *size = vap.va_size;

 return (rc);
}
