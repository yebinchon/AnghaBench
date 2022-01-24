#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_20__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_22__ {TYPE_1__ format; TYPE_2__* p; } ;
typedef  TYPE_3__ picture_t ;
typedef  int int32_t ;
struct TYPE_23__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_24__ {scalar_t__ (* pf_process_sat_hue_clip ) (TYPE_3__*,TYPE_3__*,int,int,int,int,int) ;scalar_t__ (* pf_process_sat_hue ) (TYPE_3__*,TYPE_3__*,int,int,int,int,int) ;int /*<<< orphan*/  b_brightness_threshold; int /*<<< orphan*/  f_gamma; int /*<<< orphan*/  f_saturation; int /*<<< orphan*/  f_hue; int /*<<< orphan*/  f_brightness; int /*<<< orphan*/  f_contrast; } ;
typedef  TYPE_5__ filter_sys_t ;
struct TYPE_21__ {int i_pitch; int i_visible_pitch; size_t* p_pixels; int i_visible_lines; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int M_PI ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int) ; 
 int FUNC4 (double) ; 
 TYPE_3__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 double FUNC8 (int,double) ; 
 int FUNC9 (double) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_3__*,int,int,int,int,int) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_3__*,int,int,int,int,int) ; 
 double FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC13( filter_t *p_filter, picture_t *p_pic )
{
    int pi_luma[256];
    int pi_gamma[256];

    picture_t *p_outpic;
    uint8_t *p_in, *p_in_end, *p_line_end;
    uint8_t *p_out;
    int i_y_offset, i_u_offset, i_v_offset;

    int i_pitch, i_visible_pitch;

    double  f_hue;
    double  f_gamma;
    int32_t i_cont, i_lum;
    int i_sat, i_sin, i_cos, i_x, i_y;

    filter_sys_t *p_sys = p_filter->p_sys;

    if( !p_pic ) return NULL;

    i_pitch = p_pic->p->i_pitch;
    i_visible_pitch = p_pic->p->i_visible_pitch;

    if( FUNC1( p_pic->format.i_chroma, &i_y_offset,
                             &i_u_offset, &i_v_offset ) != VLC_SUCCESS )
    {
        FUNC6( p_filter, "Unsupported input chroma (%4.4s)",
                  (char*)&(p_pic->format.i_chroma) );

        FUNC7( p_pic );
        return NULL;
    }

    p_outpic = FUNC5( p_filter );
    if( !p_outpic )
    {
        FUNC6( p_filter, "can't get output picture" );

        FUNC7( p_pic );
        return NULL;
    }

    /* Get variables */
    i_cont = (int)( FUNC12( &p_sys->f_contrast ) * 255 );
    i_lum = (int)( (FUNC12( &p_sys->f_brightness ) - 1.0)*255 );
    f_hue = FUNC12( &p_sys->f_hue ) * (float)(M_PI / 180.);
    i_sat = (int)( FUNC12( &p_sys->f_saturation ) * 256 );
    f_gamma = 1.0 / FUNC12( &p_sys->f_gamma );

    /*
     * Threshold mode drops out everything about luma, contrast and gamma.
     */
    if( !FUNC2( &p_sys->b_brightness_threshold ) )
    {

        /* Contrast is a fast but kludged function, so I put this gap to be
         * cleaner :) */
        i_lum += 128 - i_cont / 2;

        /* Fill the gamma lookup table */
        for( int i = 0 ; i < 256 ; i++ )
        {
          pi_gamma[ i ] = FUNC3( FUNC8(i / 255.0, f_gamma) * 255.0);
        }

        /* Fill the luma lookup table */
        for( int i = 0 ; i < 256 ; i++ )
        {
            pi_luma[ i ] = pi_gamma[FUNC3( i_lum + i_cont * i / 256)];
        }
    }
    else
    {
        /*
         * We get luma as threshold value: the higher it is, the darker is
         * the image. Should I reverse this?
         */
        for( int i = 0 ; i < 256 ; i++ )
        {
            pi_luma[ i ] = (i < i_lum) ? 0 : 255;
        }

        /*
         * Desaturates image to avoid that strange yellow halo...
         */
        i_sat = 0;
    }

    /*
     * Do the Y plane
     */

    p_in = p_pic->p->p_pixels + i_y_offset;
    p_in_end = p_in + p_pic->p->i_visible_lines * p_pic->p->i_pitch - 8 * 4;

    p_out = p_outpic->p->p_pixels + i_y_offset;

    for( ; p_in < p_in_end ; )
    {
        p_line_end = p_in + i_visible_pitch - 8 * 4;

        for( ; p_in < p_line_end ; )
        {
            /* Do 8 pixels at a time */
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
        }

        p_line_end += 8 * 4;

        for( ; p_in < p_line_end ; )
        {
            *p_out = pi_luma[ *p_in ]; p_in += 2; p_out += 2;
        }

        p_in += i_pitch - p_pic->p->i_visible_pitch;
        p_out += i_pitch - p_outpic->p->i_visible_pitch;
    }

    /*
     * Do the U and V planes
     */

    i_sin = FUNC9(f_hue) * 256;
    i_cos = FUNC4(f_hue) * 256;

    i_x = ( FUNC4(f_hue) + FUNC9(f_hue) ) * 32768;
    i_y = ( FUNC4(f_hue) - FUNC9(f_hue) ) * 32768;

    if ( i_sat > 256 )
    {
        if ( p_sys->pf_process_sat_hue_clip( p_pic, p_outpic, i_sin, i_cos, i_sat,
                                             i_x, i_y ) != VLC_SUCCESS )
        {
            /* Currently only one error can happen in the function, but if there
             * will be more of them, this message must go away */
            FUNC6( p_filter, "Unsupported input chroma (%4.4s)",
                      (char*)&(p_pic->format.i_chroma) );
            FUNC7( p_pic );
            return NULL;
        }
    }
    else
    {
        if ( p_sys->pf_process_sat_hue( p_pic, p_outpic, i_sin, i_cos, i_sat,
                                        i_x, i_y ) != VLC_SUCCESS )
        {
            /* Currently only one error can happen in the function, but if there
             * will be more of them, this message must go away */
            FUNC6( p_filter, "Unsupported input chroma (%4.4s)",
                      (char*)&(p_pic->format.i_chroma) );
            FUNC7( p_pic );
            return NULL;
        }
    }

    return FUNC0( p_outpic, p_pic );
}