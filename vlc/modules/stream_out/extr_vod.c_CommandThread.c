
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vod_t ;
struct TYPE_12__ {int p_fifo_cmd; } ;
typedef TYPE_2__ vod_sys_t ;
struct TYPE_13__ {int i_type; int psz_arg; int p_media; } ;
typedef TYPE_3__ rtsp_cmd_t ;
typedef int cmd ;
struct TYPE_14__ {int p_buffer; } ;
typedef TYPE_4__ block_t ;


 int MediaDel (TYPE_1__*,int ) ;
 int MediaSetup (TYPE_1__*,int ,int ) ;



 int VOD_MEDIA_STOP ;
 TYPE_4__* block_FifoGet (int ) ;
 int block_Release (TYPE_4__*) ;
 int free (int ) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vod_MediaControl (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void* CommandThread( void *obj )
{
    vod_t *p_vod = (vod_t*)obj;
    vod_sys_t *p_sys = p_vod->p_sys;

    for( ;; )
    {
        block_t *p_block_cmd = block_FifoGet( p_sys->p_fifo_cmd );
        rtsp_cmd_t cmd;

        if( !p_block_cmd )
            break;

        int canc = vlc_savecancel ();
        memcpy( &cmd, p_block_cmd->p_buffer, sizeof(cmd) );
        block_Release( p_block_cmd );


        switch( cmd.i_type )
        {
        case 130:
            MediaSetup(p_vod, cmd.p_media, cmd.psz_arg);
            break;
        case 129:
            MediaDel(p_vod, cmd.p_media);
            break;
        case 128:
            vod_MediaControl( p_vod, cmd.p_media, cmd.psz_arg, VOD_MEDIA_STOP );
            break;

        default:
            break;
        }

        free( cmd.psz_arg );
        vlc_restorecancel (canc);
    }

    return ((void*)0);
}
