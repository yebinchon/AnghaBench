
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathname {size_t pn_bufsize; scalar_t__ pn_pathlen; int pn_buf; int pn_path; } ;


 int KM_SLEEP ;
 int kmem_alloc (size_t,int ) ;

void
pn_alloc_sz(struct pathname *pnp, size_t sz)
{
 pnp->pn_buf = kmem_alloc(sz, KM_SLEEP);
 pnp->pn_bufsize = sz;




}
