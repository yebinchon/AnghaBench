
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int * p_buffer; } ;
typedef TYPE_2__ block_t ;
struct TYPE_10__ {scalar_t__ i_position; scalar_t__ i_header; scalar_t__ i_media_used; size_t i_media; size_t i_packet_length; int * p_media; int * p_header; scalar_t__ b_eof; } ;
typedef TYPE_3__ access_sys_t ;


 int MMS_PACKET_MEDIA ;
 scalar_t__ __MAX (size_t,size_t) ;
 TYPE_2__* block_Alloc (size_t const) ;
 int memcpy (int *,int *,size_t const) ;
 int memset (int *,int ,size_t) ;
 int mms_HeaderMediaRead (TYPE_1__*,int ) ;

__attribute__((used)) static block_t *Block( stream_t *p_access, bool *restrict eof )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->b_eof )
    {
        *eof = 1;
        return ((void*)0);
    }

    if( p_sys->i_position < p_sys->i_header )
    {
        const size_t i_copy = p_sys->i_header - p_sys->i_position;

        block_t *p_block = block_Alloc( i_copy );
        if( !p_block )
            return ((void*)0);

        memcpy( p_block->p_buffer, &p_sys->p_header[p_sys->i_position], i_copy );
        p_sys->i_position += i_copy;
        return p_block;
    }
    else if( p_sys->p_media && p_sys->i_media_used < __MAX( p_sys->i_media, p_sys->i_packet_length ) )
    {
        size_t i_copy = 0;
        size_t i_padding = 0;

        if( p_sys->i_media_used < p_sys->i_media )
            i_copy = p_sys->i_media - p_sys->i_media_used;
        if( __MAX( p_sys->i_media, p_sys->i_media_used ) < p_sys->i_packet_length )
            i_padding = p_sys->i_packet_length - __MAX( p_sys->i_media, p_sys->i_media_used );

        block_t *p_block = block_Alloc( i_copy + i_padding );
        if( !p_block )
            return ((void*)0);

        if( i_copy > 0 )
            memcpy( &p_block->p_buffer[0], &p_sys->p_media[p_sys->i_media_used], i_copy );
        if( i_padding > 0 )
            memset( &p_block->p_buffer[i_copy], 0, i_padding );

        p_sys->i_media_used += i_copy + i_padding;
        p_sys->i_position += i_copy + i_padding;
        return p_block;
    }

    mms_HeaderMediaRead( p_access, MMS_PACKET_MEDIA );
    return ((void*)0);
}
