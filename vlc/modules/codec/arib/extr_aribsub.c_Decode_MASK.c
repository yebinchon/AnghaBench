#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_arib_instance; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int i_flags; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;
typedef  int /*<<< orphan*/  arib_parser_t ;
typedef  int /*<<< orphan*/  arib_decoder_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int VLCDEC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_block == NULL ) /* No Drain */
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        FUNC3( p_block );
        return VLCDEC_SUCCESS;
    }

    arib_parser_t *p_parser = FUNC1( p_sys->p_arib_instance );
    arib_decoder_t *p_decoder = FUNC0( p_sys->p_arib_instance );
    if ( p_parser && p_decoder )
    {
        FUNC2( p_parser, p_block->p_buffer, p_block->i_buffer );
        subpicture_t *p_spu = FUNC5( p_dec, p_parser, p_decoder, p_block );
        if( p_spu != NULL )
            FUNC4( p_dec, p_spu );
    }

    FUNC3( p_block );
    return VLCDEC_SUCCESS;
}