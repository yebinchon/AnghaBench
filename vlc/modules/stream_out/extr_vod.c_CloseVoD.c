
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vod_t ;
struct TYPE_11__ {struct TYPE_11__* psz_rtsp_path; int p_fifo_cmd; int thread; } ;
typedef TYPE_2__ vod_sys_t ;
typedef int vlc_object_t ;
struct TYPE_12__ {scalar_t__ i_type; TYPE_2__* psz_arg; int p_media; } ;
typedef TYPE_3__ rtsp_cmd_t ;
typedef int cmd ;
struct TYPE_13__ {int p_buffer; } ;
typedef TYPE_4__ block_t ;


 int MediaDel (TYPE_1__*,int ) ;
 scalar_t__ RTSP_CMD_TYPE_DEL ;
 scalar_t__ block_FifoCount (int ) ;
 TYPE_4__* block_FifoGet (int ) ;
 int block_FifoRelease (int ) ;
 int block_Release (TYPE_4__*) ;
 int free (TYPE_2__*) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

void CloseVoD( vlc_object_t * p_this )
{
    vod_t *p_vod = (vod_t *)p_this;
    vod_sys_t *p_sys = p_vod->p_sys;


    vlc_cancel( p_sys->thread );
    vlc_join( p_sys->thread, ((void*)0) );

    while( block_FifoCount( p_sys->p_fifo_cmd ) > 0 )
    {
        rtsp_cmd_t cmd;
        block_t *p_block_cmd = block_FifoGet( p_sys->p_fifo_cmd );
        memcpy( &cmd, p_block_cmd->p_buffer, sizeof(cmd) );
        block_Release( p_block_cmd );
        if ( cmd.i_type == RTSP_CMD_TYPE_DEL )
            MediaDel(p_vod, cmd.p_media);
        free( cmd.psz_arg );
    }
    block_FifoRelease( p_sys->p_fifo_cmd );

    free( p_sys->psz_rtsp_path );
    free( p_sys );
}
