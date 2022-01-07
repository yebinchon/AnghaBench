
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ i_offset; int bytestream; int i_state; } ;
typedef TYPE_1__ packetizer_t ;
struct TYPE_10__ {int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int STATE_NOSYNC ;
 TYPE_2__* block_Alloc (int) ;
 int block_BytestreamEmpty (int *) ;
 int block_Release (TYPE_2__*) ;
 int memcpy (int ,int const*,int) ;
 TYPE_2__* packetizer_Packetize (TYPE_1__*,TYPE_2__**) ;

__attribute__((used)) static inline void packetizer_Header( packetizer_t *p_pack,
                                      const uint8_t *p_header, int i_header )
{
    block_t *p_init = block_Alloc( i_header );
    if( !p_init )
        return;

    memcpy( p_init->p_buffer, p_header, i_header );

    block_t *p_pic;
    while( ( p_pic = packetizer_Packetize( p_pack, &p_init ) ) )
        block_Release( p_pic );
    while( ( p_pic = packetizer_Packetize( p_pack, ((void*)0) ) ) )
        block_Release( p_pic );

    p_pack->i_state = STATE_NOSYNC;
    block_BytestreamEmpty( &p_pack->bytestream );
    p_pack->i_offset = 0;
}
