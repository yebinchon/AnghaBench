
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathname {int dummy; } ;


 int MAXPATHLEN ;
 int pn_alloc_sz (struct pathname*,int ) ;

void
pn_alloc(struct pathname *pnp)
{
 pn_alloc_sz(pnp, MAXPATHLEN);
}
