
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef scalar_t__ offset_t ;


 int EINVAL ;
 scalar_t__ MAXOFFSET_T ;

int
vn_seek(vnode_t *vp, offset_t ooff, offset_t *noffp, void *ct)
{
 return ((*noffp < 0 || *noffp > MAXOFFSET_T) ? EINVAL : 0);
}
