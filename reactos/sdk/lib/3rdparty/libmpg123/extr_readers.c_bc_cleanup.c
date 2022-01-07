
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ pool_fill; int * pool; } ;


 int buffy_del_chain (int *) ;

void bc_cleanup(struct bufferchain *bc)
{
 buffy_del_chain(bc->pool);
 bc->pool = ((void*)0);
 bc->pool_fill = 0;
}
