
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferchain {size_t pool_size; size_t bufblock; } ;



void bc_poolsize(struct bufferchain *bc, size_t pool_size, size_t bufblock)
{
 bc->pool_size = pool_size;
 bc->bufblock = bufblock;
}
