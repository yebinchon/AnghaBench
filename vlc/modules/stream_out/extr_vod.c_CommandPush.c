
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vod_t ;
struct TYPE_10__ {int p_fifo_cmd; } ;
typedef TYPE_2__ vod_sys_t ;
typedef int vod_media_t ;
typedef int rtsp_cmd_type_t ;
struct TYPE_11__ {int * psz_arg; int * p_media; int i_type; } ;
typedef TYPE_3__ rtsp_cmd_t ;
typedef int cmd ;
struct TYPE_12__ {int p_buffer; } ;
typedef TYPE_4__ block_t ;


 TYPE_4__* block_Alloc (int) ;
 int block_FifoPut (int ,TYPE_4__*) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static void CommandPush( vod_t *p_vod, rtsp_cmd_type_t i_type,
                         vod_media_t *p_media, const char *psz_arg )
{
    rtsp_cmd_t cmd;
    block_t *p_cmd;

    cmd.i_type = i_type;
    cmd.p_media = p_media;
    if( psz_arg )
        cmd.psz_arg = strdup(psz_arg);
    else
        cmd.psz_arg = ((void*)0);

    p_cmd = block_Alloc( sizeof(rtsp_cmd_t) );
    memcpy( p_cmd->p_buffer, &cmd, sizeof(cmd) );

    vod_sys_t *p_sys = p_vod->p_sys;
    block_FifoPut( p_sys->p_fifo_cmd, p_cmd );
}
