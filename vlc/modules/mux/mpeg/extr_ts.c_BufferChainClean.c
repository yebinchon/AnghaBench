
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_buffer_chain_t ;
typedef int block_t ;


 int * BufferChainGet (int *) ;
 int BufferChainInit (int *) ;
 int block_Release (int *) ;

__attribute__((used)) static inline void BufferChainClean( sout_buffer_chain_t *c )
{
    block_t *b;

    while( ( b = BufferChainGet( c ) ) )
    {
        block_Release( b );
    }
    BufferChainInit( c );
}
