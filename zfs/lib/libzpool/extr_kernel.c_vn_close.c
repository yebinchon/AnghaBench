
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v_fd; int v_dump_fd; int v_path; } ;
typedef TYPE_1__ vnode_t ;


 int close (int) ;
 int spa_strfree (int ) ;
 int umem_free (TYPE_1__*,int) ;

void
vn_close(vnode_t *vp)
{
 close(vp->v_fd);
 if (vp->v_dump_fd != -1)
  close(vp->v_dump_fd);
 spa_strfree(vp->v_path);
 umem_free(vp, sizeof (vnode_t));
}
