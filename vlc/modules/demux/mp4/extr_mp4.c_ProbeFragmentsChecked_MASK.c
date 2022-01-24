#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_9__ {int b_fragments_probed; int b_error; TYPE_1__* p_moov; int /*<<< orphan*/  b_fastseekable; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_7__ {scalar_t__ const i_size; scalar_t__ const i_pos; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  VLC_DIALOG_QUESTION_NORMAL ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,char*,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->b_fragments_probed )
        return VLC_SUCCESS;

    if( !p_sys->b_fastseekable )
    {
        const char *psz_msg = FUNC1(
            "Because this file index is broken or missing, "
            "seeking will not work correctly.\n"
            "VLC won't repair your file but can temporary fix this "
            "problem by building an index in memory.\n"
            "This step might take a long time on a large file.\n"
            "What do you want to do?");
        bool b_continue = FUNC2( p_demux,
                                               VLC_DIALOG_QUESTION_NORMAL,
                                               FUNC1("Do not seek"),
                                               FUNC1("Build index"),
                                               NULL,
                                               FUNC1("Broken or missing Index"),
                                               "%s", psz_msg );
        if( !b_continue )
            return VLC_EGENERIC;
    }

    const uint64_t i_backup_pos = FUNC4( p_demux->s );
    int i_ret = FUNC3( p_demux->s, p_sys->p_moov->i_pos + p_sys->p_moov->i_size );
    if( i_ret == VLC_SUCCESS )
    {
        bool foo;
        i_ret = FUNC0( p_demux, true, &foo );
        p_sys->b_fragments_probed = true;
    }

    if( i_ret != VLC_SUCCESS )
        p_sys->b_error = (FUNC3( p_demux->s, i_backup_pos ) != VLC_SUCCESS);

    return i_ret;
}