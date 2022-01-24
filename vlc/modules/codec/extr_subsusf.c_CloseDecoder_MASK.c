#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_6__ {int i_ssa_styles; int i_images; struct TYPE_6__** pp_images; struct TYPE_6__* psz_filename; scalar_t__ p_pic; struct TYPE_6__** pp_ssa_styles; int /*<<< orphan*/  p_style; struct TYPE_6__* psz_stylename; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->pp_ssa_styles )
    {
        for( int i = 0; i < p_sys->i_ssa_styles; i++ )
        {
            if( !p_sys->pp_ssa_styles[i] )
                continue;

            FUNC1( p_sys->pp_ssa_styles[i]->psz_stylename );
            FUNC3( p_sys->pp_ssa_styles[i]->p_style );
            FUNC1( p_sys->pp_ssa_styles[i] );
        }
        FUNC0( p_sys->i_ssa_styles, p_sys->pp_ssa_styles );
    }
    if( p_sys->pp_images )
    {
        for( int i = 0; i < p_sys->i_images; i++ )
        {
            if( !p_sys->pp_images[i] )
                continue;

            if( p_sys->pp_images[i]->p_pic )
                FUNC2( p_sys->pp_images[i]->p_pic );
            FUNC1( p_sys->pp_images[i]->psz_filename );

            FUNC1( p_sys->pp_images[i] );
        }
        FUNC0( p_sys->i_images, p_sys->pp_images );
    }

    FUNC1( p_sys );
}