#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_58__   TYPE_9__ ;
typedef  struct TYPE_57__   TYPE_8__ ;
typedef  struct TYPE_56__   TYPE_7__ ;
typedef  struct TYPE_55__   TYPE_6__ ;
typedef  struct TYPE_54__   TYPE_5__ ;
typedef  struct TYPE_53__   TYPE_4__ ;
typedef  struct TYPE_52__   TYPE_3__ ;
typedef  struct TYPE_51__   TYPE_32__ ;
typedef  struct TYPE_50__   TYPE_2__ ;
typedef  struct TYPE_49__   TYPE_22__ ;
typedef  struct TYPE_48__   TYPE_1__ ;
typedef  struct TYPE_47__   TYPE_19__ ;
typedef  struct TYPE_46__   TYPE_11__ ;
typedef  struct TYPE_45__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_45__ {int /*<<< orphan*/  i_chroma; int /*<<< orphan*/  i_sar_den; int /*<<< orphan*/  i_sar_num; } ;
struct TYPE_55__ {int b_error; int /*<<< orphan*/  encoder; TYPE_22__* p_enccfg; int /*<<< orphan*/ * p_final_conv_static; int /*<<< orphan*/ * p_uf_chain; int /*<<< orphan*/ * p_conv_static; int /*<<< orphan*/ * p_conv_nonstatic; int /*<<< orphan*/ * p_f_chain; scalar_t__ downstream_id; TYPE_32__* p_decoder; scalar_t__ (* pf_transcode_downstream_add ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  p_filterscfg; TYPE_10__ fmt_input_video; int /*<<< orphan*/ * p_spu_blender; } ;
typedef  TYPE_6__ sout_stream_id_sys_t ;
struct TYPE_46__ {int /*<<< orphan*/  i_sar_den; int /*<<< orphan*/  i_sar_num; } ;
struct TYPE_56__ {TYPE_11__ format; struct TYPE_56__* p_next; } ;
typedef  TYPE_7__ picture_t ;
typedef  int /*<<< orphan*/  filter_chain_t ;
struct TYPE_57__ {TYPE_10__ video; } ;
typedef  TYPE_8__ es_format_t ;
struct TYPE_58__ {int i_flags; } ;
typedef  TYPE_9__ block_t ;
struct TYPE_54__ {int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_48__ {int i_count; } ;
struct TYPE_52__ {scalar_t__ num; } ;
struct TYPE_53__ {TYPE_1__ threads; TYPE_3__ fps; } ;
struct TYPE_50__ {int /*<<< orphan*/  video; } ;
struct TYPE_51__ {int (* pf_decode ) (TYPE_32__*,TYPE_9__*) ;int /*<<< orphan*/  fmt_in; TYPE_2__ fmt_out; } ;
struct TYPE_49__ {char* psz_name; TYPE_4__ video; int /*<<< orphan*/  i_codec; } ;
struct TYPE_47__ {TYPE_5__ video; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int BLOCK_FLAG_END_OF_SEQUENCE ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *,TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int VLCDEC_SUCCESS ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__**,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int FUNC14 (TYPE_32__*,TYPE_9__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__**,int) ; 
 TYPE_7__* FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,TYPE_9__**) ; 
 TYPE_9__* FUNC20 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 TYPE_19__* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,TYPE_22__*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_22__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_6__*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_8__*,TYPE_19__*,TYPE_6__*) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_10__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_10__*,TYPE_11__*) ; 

int FUNC34( sout_stream_t *p_stream, sout_stream_id_sys_t *id,
                                    block_t *in, block_t **out )
{
    *out = NULL;

    bool b_eos = in && (in->i_flags & BLOCK_FLAG_END_OF_SEQUENCE);

    int ret = id->p_decoder->pf_decode( id->p_decoder, in );
    if( ret != VLCDEC_SUCCESS )
        return VLC_EGENERIC;

    picture_t *p_pics = FUNC17( id );

    do
    {
        picture_t *p_pic = p_pics;
        if( p_pic )
        {
            p_pics = p_pic->p_next;
            p_pic->p_next = NULL;
        }

        if( id->b_error && p_pic )
        {
            FUNC13( p_pic );
            continue;
        }

        if( p_pic && ( FUNC30(!FUNC25(id->encoder)) ||
              !FUNC33( &id->fmt_input_video, &p_pic->format ) ) )
        {
            if( !FUNC25(id->encoder) ) /* Configure Encoder input/output */
            {
                FUNC3( !id->p_f_chain && !id->p_uf_chain );
                FUNC26( FUNC2(p_stream),
                                                   &id->p_decoder->fmt_out.video,
                                                   id->p_enccfg,
                                                   FUNC8( id, p_pic ),
                                                   id->encoder );
                /* will be opened below */
            }
            else /* picture format has changed */
            {
                FUNC11( p_stream, "aspect-ratio changed, reiniting. %i -> %i : %i -> %i.",
                            id->fmt_input_video.i_sar_num, p_pic->format.i_sar_num,
                            id->fmt_input_video.i_sar_den, p_pic->format.i_sar_den
                        );
                /* Close filters, encoder format input can't change */
                FUNC27( &id->p_f_chain );
                FUNC27( &id->p_conv_nonstatic );
                FUNC27( &id->p_conv_static );
                FUNC27( &id->p_uf_chain );
                FUNC27( &id->p_final_conv_static );
                if( id->p_spu_blender )
                    FUNC6( id->p_spu_blender );
                id->p_spu_blender = NULL;

                FUNC31( &id->fmt_input_video );
            }

            FUNC32( &id->fmt_input_video, &p_pic->format );

            if( !FUNC28( id ) )
            {
                es_format_t tmpfmt;
                FUNC5( &tmpfmt, VIDEO_ES, id->fmt_input_video.i_chroma );
                tmpfmt.video = id->fmt_input_video;
                if( FUNC29( p_stream,
                                                  id->p_filterscfg,
                                                 (id->p_enccfg->video.fps.num > 0),
                                                 &tmpfmt,
                                                 FUNC21( id->encoder ),
                                                 id ) != VLC_SUCCESS )
                    goto error;
            }

            /* Start missing encoder */
            if( !FUNC25( id->encoder ) &&
                FUNC24( id->encoder, id->p_enccfg ) != VLC_SUCCESS )
            {
                FUNC10( p_stream, "cannot find video encoder (module:%s fourcc:%4.4s). "
                                   "Take a look few lines earlier to see possible reason.",
                                   id->p_enccfg->psz_name ? id->p_enccfg->psz_name : "any",
                                   (char *)&id->p_enccfg->i_codec );
                goto error;
            }

            FUNC9( p_stream, "destination (after video filters) %ux%u",
                               FUNC21( id->encoder )->video.i_width,
                               FUNC21( id->encoder )->video.i_height );

            if( !id->downstream_id )
                id->downstream_id =
                    id->pf_transcode_downstream_add( p_stream,
                                                     &id->p_decoder->fmt_in,
                                                     FUNC22( id->encoder ) );
            if( !id->downstream_id )
            {
                FUNC10( p_stream, "cannot output transcoded stream %4.4s",
                                   (char *) &id->p_enccfg->i_codec );
                goto error;
            }
        }

        /* Run the filter and output chains; first with the picture,
         * and then with NULL as many times as we need until they
         * stop outputting frames.
         */
        for ( picture_t *p_in = p_pic; ; p_in = NULL /* drain second time */ )
        {
            /* Run filter chain */
            filter_chain_t * primary_chains[] = { id->p_f_chain,
                                                  id->p_conv_nonstatic,
                                                  id->p_conv_static };
            for( size_t i=0; p_in && i<FUNC0(primary_chains); i++ )
            {
                if( !primary_chains[i] )
                    continue;
                p_in = FUNC7( primary_chains[i], p_in );
            }

            if( !p_in )
                break;

            for ( ;; p_in = NULL /* drain second time */ )
            {
                /* Run user specified filter chain */
                filter_chain_t * secondary_chains[] = { id->p_uf_chain,
                                                        id->p_final_conv_static };
                for( size_t i=0; p_in && i<FUNC0(secondary_chains); i++ )
                {
                    if( !secondary_chains[i] )
                        continue;
                    p_in = FUNC7( secondary_chains[i], p_in );
                }

                if( !p_in )
                    break;

                /* Blend subpictures */
                p_in = FUNC1( p_stream, id, p_in );

                if( p_in )
                {
                    block_t *p_encoded = FUNC20( id->encoder, p_in );
                    if( p_encoded )
                        FUNC4( out, p_encoded );
                    FUNC13( p_in );
                }
            }
        }

        if( b_eos )
        {
            FUNC11( p_stream, "Drain/restart on EOS" );
            if( FUNC19( id->encoder, out ) != VLC_SUCCESS )
                goto error;
            FUNC18( id->encoder );
            /* Close filters */
            FUNC27( &id->p_f_chain );
            FUNC27( &id->p_conv_nonstatic );
            FUNC27( &id->p_conv_static );
            FUNC27( &id->p_uf_chain );
            FUNC27( &id->p_final_conv_static );
            FUNC16( out, BLOCK_FLAG_END_OF_SEQUENCE );
            b_eos = false;
        }

        continue;
error:
        if( p_pic )
            FUNC13( p_pic );
        id->b_error = true;
    } while( p_pics );

    if( id->p_enccfg->video.threads.i_count >= 1 )
    {
        /* Pick up any return data the encoder thread wants to output. */
        FUNC4( out, FUNC23( id->encoder ) );
    }

    /* Drain encoder */
    if( FUNC30( !id->b_error && in == NULL ) && FUNC25( id->encoder ) )
    {
        FUNC9( p_stream, "Flushing thread and waiting that");
        if( FUNC19( id->encoder, out ) == VLC_SUCCESS )
            FUNC9( p_stream, "Flushing done");
        else
            FUNC12( p_stream, "Flushing failed");
    }

    if( b_eos )
        FUNC16( out, BLOCK_FLAG_END_OF_SEQUENCE );

    return id->b_error ? VLC_EGENERIC : VLC_SUCCESS;
}