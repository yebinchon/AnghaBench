
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int block_t ;


 int block_Release (int *) ;
 int * block_TryRealloc (int *,int ,size_t) ;

block_t *block_Realloc (block_t *block, ssize_t prebody, size_t body)
{
    block_t *rea = block_TryRealloc (block, prebody, body);
    if (rea == ((void*)0))
        block_Release(block);
    return rea;
}
