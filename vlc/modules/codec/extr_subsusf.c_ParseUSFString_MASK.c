#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {struct TYPE_13__* p_next; TYPE_1__* p_text; } ;
typedef  TYPE_2__ subpicture_region_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_15__ {int /*<<< orphan*/  i_align; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_12__ {char* psz_text; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*,int) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static subpicture_region_t *FUNC13( decoder_t *p_dec,
                                            char *psz_subtitle )
{
    decoder_sys_t        *p_sys = p_dec->p_sys;
    subpicture_region_t  *p_region_first = NULL;
    subpicture_region_t  *p_region_upto  = p_region_first;

    while( *psz_subtitle )
    {
        if( *psz_subtitle == '<' )
        {
            char *psz_end = NULL;


            if(( !FUNC10( psz_subtitle, "<karaoke ", 9 )) ||
                    ( !FUNC10( psz_subtitle, "<karaoke>", 9 )))
            {
                psz_end = FUNC6( psz_subtitle, "</karaoke>" );

                if( psz_end )
                {
                    subpicture_region_t  *p_text_region;

                    char *psz_flat = NULL;
                    char *psz_knodes = FUNC11( &psz_subtitle[9], psz_end - &psz_subtitle[9] );
                    if( psz_knodes )
                    {
                        /* remove timing <k> tags */
                        psz_flat = FUNC0( psz_knodes );
                        FUNC5( psz_knodes );
                        if( psz_flat )
                        {
                            p_text_region = FUNC1( p_dec,
                                                              psz_flat,
                                                              p_sys->i_align );
                            if( p_text_region )
                            {
                                FUNC5( p_text_region->p_text->psz_text );
                                p_text_region->p_text->psz_text = psz_flat;
                                if( !p_region_first )
                                {
                                    p_region_first = p_region_upto = p_text_region;
                                }
                                else if( p_text_region )
                                {
                                    p_region_upto->p_next = p_text_region;
                                    p_region_upto = p_region_upto->p_next;
                                }
                            }
                            else FUNC5( psz_flat );
                        }
                    }

                    psz_end += FUNC8( psz_end, ">" ) + 1;
                }
            }
            else if(( !FUNC10( psz_subtitle, "<image ", 7 )) ||
                    ( !FUNC10( psz_subtitle, "<image>", 7 )))
            {
                subpicture_region_t *p_image_region = NULL;

                psz_end = FUNC6( psz_subtitle, "</image>" );
                char *psz_content = FUNC7( psz_subtitle, '>' );
                int   i_transparent = -1;

                /* If a colorkey parameter is specified, then we have to map
                 * that index in the picture through as transparent (it is
                 * required by the USF spec but is also recommended that if the
                 * creator really wants a transparent colour that they use a
                 * type like PNG that properly supports it; this goes doubly
                 * for VLC because the pictures are stored internally in YUV
                 * and the resulting colour-matching may not produce the
                 * desired results.)
                 */
                char *psz_tmp = FUNC2( "colorkey", psz_subtitle );
                if( psz_tmp )
                {
                    if( *psz_tmp == '#' )
                        i_transparent = FUNC12( psz_tmp + 1, NULL, 16 ) & 0x00ffffff;
                    FUNC5( psz_tmp );
                }
                if( psz_content && ( psz_content < psz_end ) )
                {
                    char *psz_filename = FUNC11( &psz_content[1], psz_end - &psz_content[1] );
                    if( psz_filename )
                    {
                        p_image_region = FUNC3( p_dec,
                                            psz_filename, i_transparent );
                        FUNC5( psz_filename );
                    }
                }

                if( psz_end ) psz_end += FUNC8( psz_end, ">" ) + 1;

                if( p_image_region )
                {
                    FUNC4( p_image_region, psz_subtitle );

                    p_image_region->p_next   = NULL;
                }
                if( !p_region_first )
                {
                    p_region_first = p_region_upto = p_image_region;
                }
                else if( p_image_region )
                {
                    p_region_upto->p_next = p_image_region;
                    p_region_upto = p_region_upto->p_next;
                }
            }
            else
            {
                subpicture_region_t  *p_text_region;

                psz_end = psz_subtitle + FUNC9( psz_subtitle );

                p_text_region = FUNC1( p_dec,
                                                  psz_subtitle,
                                                  p_sys->i_align );

                if( p_text_region )
                {
                    FUNC5( p_text_region->p_text->psz_text );
                    p_text_region->p_text->psz_text = FUNC0( psz_subtitle );
                }

                if( !p_region_first )
                {
                    p_region_first = p_region_upto = p_text_region;
                }
                else if( p_text_region )
                {
                    p_region_upto->p_next = p_text_region;
                    p_region_upto = p_region_upto->p_next;
                }
            }
            if( psz_end )
                psz_subtitle = psz_end - 1;

            psz_subtitle += FUNC8( psz_subtitle, ">" );
        }

        psz_subtitle++;
    }

    return p_region_first;
}