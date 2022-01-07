
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {scalar_t__ pool_fill; int * pool; } ;


 int bc_init (struct bufferchain*) ;
 int bc_poolsize (struct bufferchain*,size_t,size_t) ;

void bc_prepare(struct bufferchain *bc, size_t pool_size, size_t bufblock)
{
 bc_poolsize(bc, pool_size, bufblock);
 bc->pool = ((void*)0);
 bc->pool_fill = 0;
 bc_init(bc);
}
