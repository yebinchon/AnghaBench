
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_3__ {size_t i_size; } ;
typedef TYPE_1__ block_t ;



__attribute__((used)) static bool block_WillRealloc( block_t *p_block, ssize_t i_prebody, size_t i_body )
{
    if( i_prebody <= 0 && i_body <= (size_t)(-i_prebody) )
        return 0;
    else
        return ( i_prebody + i_body <= p_block->i_size );
}
