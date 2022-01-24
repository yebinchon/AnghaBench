#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_32__ {int b_use_frame_history; scalar_t__ b_double_rate; scalar_t__ b_custom_pts; } ;
struct deinterlace_ctx {int i_frame_offset; TYPE_3__ settings; TYPE_2__* meta; TYPE_4__** pp_history; scalar_t__ (* pf_render_ordered ) (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ;scalar_t__ (* pf_render_single_pic ) (TYPE_5__*,TYPE_4__*,TYPE_4__*) ;} ;
struct TYPE_33__ {scalar_t__ date; int i_nb_fields; int b_top_field_first; int b_progressive; struct TYPE_33__* p_next; } ;
typedef  TYPE_4__ picture_t ;
struct TYPE_30__ {int /*<<< orphan*/  video; } ;
struct TYPE_34__ {TYPE_1__ fmt_out; } ;
typedef  TYPE_5__ filter_t ;
struct TYPE_31__ {scalar_t__ pi_date; int pi_nb_fields; int pb_top_field_first; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_5__*) ; 
 int CUSTOM_PTS ; 
 int DEINTERLACE_DST_SIZE ; 
 scalar_t__ FUNC1 (struct deinterlace_ctx*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int HISTORY_SIZE ; 
 int METADATA_SIZE ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ; 
 scalar_t__ FUNC9 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ; 
 scalar_t__ FUNC10 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ; 

picture_t *FUNC11( filter_t *p_filter,
                            struct deinterlace_ctx *p_context, picture_t *p_pic )
{
    picture_t *p_dst[DEINTERLACE_DST_SIZE];
    int i_double_rate_alloc_end;
    /* Remember the frame offset that we should use for this frame.
       The value in p_sys will be updated to reflect the correct value
       for the *next* frame when we call the renderer. */
    int i_frame_offset;
    int i_meta_idx;

    bool b_top_field_first;

    /* Request output picture */
    p_dst[0] = FUNC0( p_filter );
    if( p_dst[0] == NULL )
    {
        FUNC6( p_pic );
        return NULL;
    }
    FUNC4( p_dst[0], p_pic );

    /* Any unused p_dst pointers must be NULL, because they are used to
       check how many output frames we have. */
    for( int i = 1; i < DEINTERLACE_DST_SIZE; ++i )
        p_dst[i] = NULL;

    /* Update the input frame history, if the currently active algorithm
       needs it. */
    if( p_context->settings.b_use_frame_history )
    {
        /* Keep reference for the picture */
        picture_t *p_dup = FUNC5( p_pic );

        /* Slide the history */
        if( p_context->pp_history[0] )
            FUNC6( p_context->pp_history[0] );
        for( int i = 1; i < HISTORY_SIZE; i++ )
            p_context->pp_history[i-1] = p_context->pp_history[i];
        p_context->pp_history[HISTORY_SIZE-1] = p_dup;
    }

    /* Slide the metadata history. */
    for( int i = 1; i < METADATA_SIZE; i++ )
        p_context->meta[i-1] = p_context->meta[i];
    /* The last element corresponds to the current input frame. */
    p_context->meta[METADATA_SIZE-1].pi_date            = p_pic->date;
    p_context->meta[METADATA_SIZE-1].pi_nb_fields       = p_pic->i_nb_fields;
    p_context->meta[METADATA_SIZE-1].pb_top_field_first = p_pic->b_top_field_first;

    /* Remember the frame offset that we should use for this frame.
       The value in p_sys will be updated to reflect the correct value
       for the *next* frame when we call the renderer. */
    i_frame_offset = p_context->i_frame_offset;
    i_meta_idx     = (METADATA_SIZE-1) - i_frame_offset;

    int i_nb_fields;

    /* These correspond to the current *outgoing* frame. */
    if( i_frame_offset != CUSTOM_PTS )
    {
        /* Pick the correct values from the history. */
        b_top_field_first = p_context->meta[i_meta_idx].pb_top_field_first;
        i_nb_fields       = p_context->meta[i_meta_idx].pi_nb_fields;
    }
    else
    {
        /* Framerate doublers must not request CUSTOM_PTS, as they need the
           original field timings, and need Deinterlace() to allocate the
           correct number of output frames. */
        FUNC2( !p_context->settings.b_double_rate );

        /* NOTE: i_nb_fields is only used for framerate doublers, so it is
                 unused in this case. b_top_field_first is only passed to the
                 algorithm. We assume that algorithms that request CUSTOM_PTS
                 will, if necessary, extract the TFF/BFF information themselves.
        */
        b_top_field_first = p_pic->b_top_field_first; /* this is not guaranteed
                                                         to be meaningful */
        i_nb_fields       = p_pic->i_nb_fields;       /* unused */
    }

    /* For framerate doublers, determine field duration and allocate
       output frames. */
    i_double_rate_alloc_end = 0; /* One past last for allocated output
                                        frames in p_dst[]. Used only for
                                        framerate doublers. Will be inited
                                        below. Declared here because the
                                        PTS logic needs the result. */
    if( p_context->settings.b_double_rate )
    {
        i_double_rate_alloc_end = i_nb_fields;
        if( i_nb_fields > DEINTERLACE_DST_SIZE )
        {
            /* Note that the effective buffer size depends also on the constant
               private_picture in vout_wrapper.c, since that determines the
               maximum number of output pictures AllocPicture() will
               successfully allocate for one input frame.
            */
            FUNC3( p_filter, "Framerate doubler: output buffer too small; "\
                               "fields = %d, buffer size = %d. Dropping the "\
                               "remaining fields.",
                               i_nb_fields, DEINTERLACE_DST_SIZE );
            i_double_rate_alloc_end = DEINTERLACE_DST_SIZE;
        }

        /* Allocate output frames. */
        for( int i = 1; i < i_double_rate_alloc_end ; ++i )
        {
            p_dst[i-1]->p_next =
            p_dst[i]           = FUNC0( p_filter );
            if( p_dst[i] )
            {
                FUNC4( p_dst[i], p_pic );
            }
            else
            {
                FUNC3( p_filter, "Framerate doubler: could not allocate "\
                                   "output frame %d", i+1 );
                i_double_rate_alloc_end = i; /* Inform the PTS logic about the
                                                correct end position. */
                break; /* If this happens, the rest of the allocations
                          aren't likely to work, either... */
            }
        }
        /* Now we have allocated *up to* the correct number of frames;
           normally, exactly the correct number. Upon alloc failure,
           we may have succeeded in allocating *some* output frames,
           but fewer than were desired. In such a case, as many will
           be rendered as were successfully allocated.

           Note that now p_dst[i] != NULL
           for 0 <= i < i_double_rate_alloc_end. */
    }
    FUNC2( p_context->settings.b_double_rate  ||  p_dst[1] == NULL );
    FUNC2( i_nb_fields > 2  ||  p_dst[2] == NULL );

    /* Render */
    if ( !p_context->settings.b_double_rate )
    {
        if ( p_context->pf_render_single_pic( p_filter, p_dst[0], p_pic ) )
            goto drop;
    }
    else
    {
        /* Note: RenderIVTC will automatically drop the duplicate frames
                 produced by IVTC. This is part of normal operation. */
        if ( p_context->pf_render_ordered( p_filter, p_dst[0], p_pic,
                                           0, !b_top_field_first ) )
            goto drop;
        if ( p_dst[1] )
            p_context->pf_render_ordered( p_filter, p_dst[1], p_pic,
                                          1, b_top_field_first );
        if ( p_dst[2] )
            p_context->pf_render_ordered( p_filter, p_dst[2], p_pic,
                                          2, !b_top_field_first );
    }

    if ( p_context->settings.b_custom_pts )
    {
        FUNC2(p_context->settings.b_use_frame_history);
        if( p_context->pp_history[0] && p_context->pp_history[1] )
        {
            /* The next frame will get a custom timestamp, too. */
            p_context->i_frame_offset = CUSTOM_PTS;
        }
        else if( !p_context->pp_history[0] && !p_context->pp_history[1] ) /* first frame */
        {
        }
        else /* second frame */
        {
            /* At the next frame, the filter starts. The next frame will get
               a custom timestamp. */
            p_context->i_frame_offset = CUSTOM_PTS;
        }
    }

    /* Set output timestamps, if the algorithm didn't request CUSTOM_PTS
       for this frame. */
    FUNC2( i_frame_offset <= METADATA_SIZE ||
            i_frame_offset == CUSTOM_PTS );
    if( i_frame_offset != CUSTOM_PTS )
    {
        vlc_tick_t i_base_pts = p_context->meta[i_meta_idx].pi_date;

        /* Note: in the usual case (i_frame_offset = 0  and
                 b_double_rate = false), this effectively does nothing.
                 This is needed to correct the timestamp
                 when i_frame_offset > 0. */
        p_dst[0]->date = i_base_pts;

        if( p_context->settings.b_double_rate )
        {
            vlc_tick_t i_field_dur = FUNC1( p_context, &p_filter->fmt_out.video, p_pic );
            /* Processing all actually allocated output frames. */
            for( int i = 1; i < i_double_rate_alloc_end; ++i )
            {
                /* XXX it's not really good especially for the first picture, but
                 * I don't think that delaying by one frame is worth it */
                if( i_base_pts != VLC_TICK_INVALID )
                    p_dst[i]->date = i_base_pts + i * i_field_dur;
                else
                    p_dst[i]->date = VLC_TICK_INVALID;
            }
        }
    }

    for( int i = 0; i < DEINTERLACE_DST_SIZE; ++i )
    {
        if( p_dst[i] )
        {
            p_dst[i]->b_progressive = true;
            p_dst[i]->i_nb_fields = 2;
        }
    }

    FUNC6( p_pic );
    return p_dst[0];

drop:
    FUNC6( p_dst[0] );
    for( int i = 1; i < DEINTERLACE_DST_SIZE; ++i )
    {
        if( p_dst[i] )
            FUNC6( p_dst[i] );
    }
#ifndef NDEBUG
    FUNC6( p_pic );
    return NULL;
#else
    return p_pic;
#endif
}