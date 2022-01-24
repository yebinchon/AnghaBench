#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_3__ {scalar_t__ p_spu; scalar_t__ p_spu_blender; int /*<<< orphan*/  p_final_conv_static; int /*<<< orphan*/  p_uf_chain; int /*<<< orphan*/  p_conv_static; int /*<<< orphan*/  p_conv_nonstatic; int /*<<< orphan*/  p_f_chain; int /*<<< orphan*/  decoder_out; int /*<<< orphan*/  fmt_input_video; int /*<<< orphan*/  encoder; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8( sout_stream_t *p_stream,
                                   sout_stream_id_sys_t *id )
{
    FUNC0(p_stream);

    /* Close encoder */
    FUNC4( id->encoder );
    FUNC5( id->encoder );

    FUNC7( &id->fmt_input_video );
    FUNC1( &id->decoder_out );

    /* Close filters */
    FUNC6( &id->p_f_chain );
    FUNC6( &id->p_conv_nonstatic );
    FUNC6( &id->p_conv_static );
    FUNC6( &id->p_uf_chain );
    FUNC6( &id->p_final_conv_static );
    if( id->p_spu_blender )
        FUNC2( id->p_spu_blender );
    if( id->p_spu )
        FUNC3( id->p_spu );
}