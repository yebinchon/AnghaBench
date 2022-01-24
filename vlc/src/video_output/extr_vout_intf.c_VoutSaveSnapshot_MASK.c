#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_4__ {char* path; char* format; char* prefix_fmt; scalar_t__ is_sequential; int /*<<< orphan*/  sequence; } ;
typedef  TYPE_1__ vout_snapshot_save_cfg_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  cfg ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC14 () ; 
 scalar_t__ FUNC15 (char**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC16( vout_thread_t *p_vout )
{
    char *psz_path = FUNC9( p_vout, "snapshot-path" );
    char *psz_format = FUNC9( p_vout, "snapshot-format" );
    char *psz_prefix = FUNC9( p_vout, "snapshot-prefix" );

    /* */
    picture_t *p_picture;
    block_t *p_image;

    /* 500ms timeout
     * XXX it will cause trouble with low fps video (< 2fps) */
    if( FUNC13( p_vout, &p_image, &p_picture, NULL, psz_format, FUNC0(500) ) )
    {
        p_picture = NULL;
        p_image = NULL;
        goto exit;
    }

    if( !psz_path )
    {
        psz_path = FUNC14();
        if( !psz_path )
        {
            FUNC5( p_vout, "no path specified for snapshots" );
            goto exit;
        }
    }

    vout_snapshot_save_cfg_t cfg;
    FUNC4( &cfg, 0, sizeof(cfg) );
    cfg.is_sequential = FUNC8( p_vout, "snapshot-sequential" );
    cfg.sequence = FUNC7( p_vout, "snapshot-num" );
    cfg.path = psz_path;
    cfg.format = psz_format;
    cfg.prefix_fmt = psz_prefix;

    char *psz_filename;
    int  i_sequence;
    if (FUNC15( &psz_filename, &i_sequence,
                                 p_image, p_vout, &cfg ) )
        goto exit;
    if( cfg.is_sequential )
        FUNC10( p_vout, "snapshot-num", i_sequence + 1 );

    FUNC1( p_vout, p_picture, psz_filename );

    /* signal creation of a new snapshot file */
    FUNC11( FUNC12(p_vout), "snapshot-file", psz_filename );

    FUNC3( psz_filename );

exit:
    if( p_image )
        FUNC2( p_image );
    if( p_picture )
        FUNC6( p_picture );
    FUNC3( psz_prefix );
    FUNC3( psz_format );
    FUNC3( psz_path );
}