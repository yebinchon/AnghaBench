
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {TYPE_3__* p_sys; int pf_destroy; int pf_update; int pf_validate; } ;
typedef TYPE_1__ subpicture_updater_t ;
struct TYPE_21__ {int b_ephemer; int b_absolute; int i_stop; scalar_t__ i_start; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_22__ {int i_subs_len; void* p_subs_data; scalar_t__ i_pts; TYPE_5__* p_dec_sys; int * p_img; } ;
typedef TYPE_3__ libass_spu_updater_sys_t ;
struct TYPE_23__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_24__ {int lock; scalar_t__ p_track; int i_max_stop; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_25__ {int i_flags; int i_buffer; char* p_buffer; scalar_t__ i_length; scalar_t__ i_pts; } ;
typedef TYPE_6__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int DecSysHold (TYPE_5__*) ;
 int Flush (TYPE_4__*) ;
 int MS_FROM_VLC_TICK (scalar_t__) ;
 int SubpictureDestroy ;
 int SubpictureUpdate ;
 int SubpictureValidate ;
 int VLCDEC_SUCCESS ;
 int __MAX (int ,scalar_t__) ;
 int ass_process_chunk (scalar_t__,void*,int,int ,int ) ;
 int block_Release (TYPE_6__*) ;
 TYPE_2__* decoder_NewSubpicture (TYPE_4__*,TYPE_1__*) ;
 int decoder_QueueSub (TYPE_4__*,TYPE_2__*) ;
 int free (TYPE_3__*) ;
 void* malloc (int) ;
 int memcpy (void*,char*,int) ;
 int msg_Warn (TYPE_4__*,char*) ;
 int subpicture_Delete (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    subpicture_t *p_spu = ((void*)0);

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        Flush( p_dec );
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    if( p_block->i_buffer == 0 || p_block->p_buffer[0] == '\0' )
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    libass_spu_updater_sys_t *p_spu_sys = malloc( sizeof(*p_spu_sys) );
    if( !p_spu_sys )
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    subpicture_updater_t updater = {
        .pf_validate = SubpictureValidate,
        .pf_update = SubpictureUpdate,
        .pf_destroy = SubpictureDestroy,
        .p_sys = p_spu_sys,
    };
    p_spu = decoder_NewSubpicture( p_dec, &updater );
    if( !p_spu )
    {
        msg_Warn( p_dec, "can't get spu buffer" );
        free( p_spu_sys );
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    p_spu_sys->p_img = ((void*)0);
    p_spu_sys->p_dec_sys = p_sys;
    p_spu_sys->i_subs_len = p_block->i_buffer;
    p_spu_sys->p_subs_data = malloc( p_block->i_buffer );
    p_spu_sys->i_pts = p_block->i_pts;
    if( !p_spu_sys->p_subs_data )
    {
        subpicture_Delete( p_spu );
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }
    memcpy( p_spu_sys->p_subs_data, p_block->p_buffer,
            p_block->i_buffer );

    p_spu->i_start = p_block->i_pts;
    p_spu->i_stop = __MAX( p_sys->i_max_stop, p_block->i_pts + p_block->i_length );
    p_spu->b_ephemer = 1;
    p_spu->b_absolute = 1;

    p_sys->i_max_stop = p_spu->i_stop;

    vlc_mutex_lock( &p_sys->lock );
    if( p_sys->p_track )
    {
        ass_process_chunk( p_sys->p_track, p_spu_sys->p_subs_data, p_spu_sys->i_subs_len,
                           MS_FROM_VLC_TICK( p_block->i_pts ), MS_FROM_VLC_TICK( p_block->i_length ) );
    }
    vlc_mutex_unlock( &p_sys->lock );

    DecSysHold( p_sys );

    block_Release( p_block );

    decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}
