
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
typedef int sout_access_out_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; scalar_t__ i_buffer; } ;
typedef TYPE_1__ block_t ;


 int block_ChainRelease (TYPE_1__*) ;

__attribute__((used)) static ssize_t Write( sout_access_out_t *p_access, block_t *p_buffer )
{
    size_t i_write = 0;
    block_t *b = p_buffer;

    while( b )
    {
        i_write += b->i_buffer;

        b = b->p_next;
    }

    block_ChainRelease( p_buffer );

    (void)p_access;
    return i_write;
}
