
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_buffer_chain_t ;
struct TYPE_3__ {int i_flags; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_HEADER ;
 TYPE_1__* BufferChainPeek (int *) ;

__attribute__((used)) static void SetHeader( sout_buffer_chain_t *c,
                        int depth )
{
    block_t *p_ts = BufferChainPeek( c );
    while( depth > 0 )
    {
        p_ts = p_ts->p_next;
        depth--;
    }
    p_ts->i_flags |= BLOCK_FLAG_HEADER;
}
