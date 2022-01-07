
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathname {scalar_t__ pn_pathlen; int * pn_path; scalar_t__ pn_bufsize; int * pn_buf; } ;


 int kmem_free (int *,scalar_t__) ;

void
pn_free(struct pathname *pnp)
{

 kmem_free(pnp->pn_buf, pnp->pn_bufsize);
 pnp->pn_buf = ((void*)0);
 pnp->pn_bufsize = 0;




}
