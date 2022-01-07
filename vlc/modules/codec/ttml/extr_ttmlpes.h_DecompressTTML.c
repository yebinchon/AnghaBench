
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int stream_t ;
typedef int decoder_t ;
struct TYPE_6__ {int i_buffer; struct TYPE_6__* p_next; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* block_ChainGather (TYPE_1__*) ;
 TYPE_1__* vlc_stream_Block (int *,int) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_FilterNew (int *,char*) ;
 int * vlc_stream_MemoryNew (int *,int *,size_t,int) ;

__attribute__((used)) static block_t * DecompressTTML( decoder_t *p_dec, const uint8_t *p_data, size_t i_data )
{
    block_t *p_decomp = ((void*)0);
    block_t **pp_append = &p_decomp;

    stream_t *s = vlc_stream_MemoryNew( p_dec, (uint8_t *) p_data, i_data, 1 );
    if( !s )
        return ((void*)0);
    stream_t *p_inflate = vlc_stream_FilterNew( s, "inflate" );
    if( p_inflate )
    {
        for( ;; )
        {
            *pp_append = vlc_stream_Block( p_inflate, 64 * 1024 );
            if( *pp_append == ((void*)0) ||
                (*pp_append)->i_buffer < 64*1024 )
                break;
            pp_append = &((*pp_append)->p_next);
        }
        s = p_inflate;
    }
    vlc_stream_Delete( s );
    return p_decomp ? block_ChainGather( p_decomp ) : ((void*)0);
}
