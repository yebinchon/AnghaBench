
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _buf {int vp; } ;


 int VOP_CLOSE (int ,int ,int ,int ,int ,int ) ;
 int kfree (struct _buf*) ;

void
kobj_close_file(struct _buf *file)
{
 VOP_CLOSE(file->vp, 0, 0, 0, 0, 0);
 kfree(file);
}
