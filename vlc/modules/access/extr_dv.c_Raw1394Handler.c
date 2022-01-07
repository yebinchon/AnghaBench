
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int raw1394handle_t ;
typedef enum raw1394_iso_disposition { ____Placeholder_raw1394_iso_disposition } raw1394_iso_disposition ;
struct TYPE_10__ {int p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_11__ {TYPE_1__* p_ev; int lock; int p_frame; } ;
typedef TYPE_4__ access_sys_t ;
struct TYPE_8__ {int lock; TYPE_3__* p_frame; int * pp_last; } ;


 int VLC_UNUSED (unsigned int) ;
 TYPE_3__* block_Alloc (int) ;
 int block_ChainAppend (int *,TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ raw1394_get_userdata (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static enum raw1394_iso_disposition
Raw1394Handler(raw1394handle_t handle, unsigned char *data,
        unsigned int length, unsigned char channel,
        unsigned char tag, unsigned char sy, unsigned int cycle,
        unsigned int dropped)
{
    stream_t *p_access = ((void*)0);
    access_sys_t *p_sys = ((void*)0);
    block_t *p_block = ((void*)0);
    VLC_UNUSED(channel); VLC_UNUSED(tag);
    VLC_UNUSED(sy); VLC_UNUSED(cycle); VLC_UNUSED(dropped);

    p_access = (stream_t *) raw1394_get_userdata( handle );
    if( !p_access ) return 0;

    p_sys = p_access->p_sys;


    if( length > 16 )
    {
        unsigned char * p = data + 8;
        int section_type = p[ 0 ] >> 5;
        int dif_sequence = p[ 1 ] >> 4;
        int dif_block = p[ 2 ];

        vlc_mutex_lock( &p_sys->p_ev->lock );



        if( (section_type == 0) && (dif_sequence == 0) )
        {
            vlc_mutex_lock( &p_sys->lock );
            if( p_sys->p_ev->p_frame )
            {


                block_ChainAppend( &p_sys->p_frame, p_sys->p_ev->p_frame );
            }

            p_sys->p_ev->p_frame = block_Alloc( 144000 );
            p_sys->p_ev->pp_last = &p_sys->p_frame;
            vlc_mutex_unlock( &p_sys->lock );
        }

        p_block = p_sys->p_ev->p_frame;
        if( p_block )
        {
            switch ( section_type )
            {
            case 0:

                memcpy( p_block->p_buffer + dif_sequence * 150 * 80, p, 480 );
                break;

            case 1:
                memcpy( p_block->p_buffer + dif_sequence * 150 * 80 + ( 1 + dif_block ) * 80, p, 480 );
                break;

            case 2:
                memcpy( p_block->p_buffer + dif_sequence * 150 * 80 + ( 3 + dif_block ) * 80, p, 480 );
                break;

            case 3:
                memcpy( p_block->p_buffer + dif_sequence * 150 * 80 + ( 6 + dif_block * 16 ) * 80, p, 480 );
                break;

            case 4:
                memcpy( p_block->p_buffer + dif_sequence * 150 * 80 + ( 7 + ( dif_block / 15 ) + dif_block ) * 80, p, 480 );
                break;

            default:
                block_Release( p_block );
                p_block = ((void*)0);
                break;
            }
        }

        vlc_mutex_unlock( &p_sys->p_ev->lock );
    }
    return 0;
}
