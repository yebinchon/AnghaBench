#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vod_t ;
struct TYPE_12__ {int /*<<< orphan*/  p_fifo_cmd; } ;
typedef  TYPE_2__ vod_sys_t ;
struct TYPE_13__ {int i_type; int /*<<< orphan*/  psz_arg; int /*<<< orphan*/  p_media; } ;
typedef  TYPE_3__ rtsp_cmd_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_14__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RTSP_CMD_TYPE_ADD 130 
#define  RTSP_CMD_TYPE_DEL 129 
#define  RTSP_CMD_TYPE_STOP 128 
 int /*<<< orphan*/  VOD_MEDIA_STOP ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void* FUNC9( void *obj )
{
    vod_t *p_vod = (vod_t*)obj;
    vod_sys_t *p_sys = p_vod->p_sys;

    for( ;; )
    {
        block_t *p_block_cmd = FUNC2( p_sys->p_fifo_cmd );
        rtsp_cmd_t cmd;

        if( !p_block_cmd )
            break;

        int canc = FUNC7 ();
        FUNC5( &cmd, p_block_cmd->p_buffer, sizeof(cmd) );
        FUNC3( p_block_cmd );

        /* */
        switch( cmd.i_type )
        {
        case RTSP_CMD_TYPE_ADD:
            FUNC1(p_vod, cmd.p_media, cmd.psz_arg);
            break;
        case RTSP_CMD_TYPE_DEL:
            FUNC0(p_vod, cmd.p_media);
            break;
        case RTSP_CMD_TYPE_STOP:
            FUNC8( p_vod, cmd.p_media, cmd.psz_arg, VOD_MEDIA_STOP );
            break;

        default:
            break;
        }

        FUNC4( cmd.psz_arg );
        FUNC6 (canc);
    }

    return NULL;
}