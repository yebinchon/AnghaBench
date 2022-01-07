
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* v_file; int v_gfp_mask; int f_mapping; } ;
typedef TYPE_1__ vnode_t ;


 int ASSERT (TYPE_1__*) ;
 int filp_close (TYPE_1__*,int ) ;
 int mapping_set_gfp_mask (int ,int ) ;
 int vn_free (TYPE_1__*) ;

int
vn_close(vnode_t *vp, int flags, int x1, int x2, void *x3, void *x4)
{
 int rc;

 ASSERT(vp);
 ASSERT(vp->v_file);

 mapping_set_gfp_mask(vp->v_file->f_mapping, vp->v_gfp_mask);
 rc = filp_close(vp->v_file, 0);
 vn_free(vp);

 return (-rc);
}
