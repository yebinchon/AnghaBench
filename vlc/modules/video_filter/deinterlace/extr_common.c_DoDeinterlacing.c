
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_32__ {int b_use_frame_history; scalar_t__ b_double_rate; scalar_t__ b_custom_pts; } ;
struct deinterlace_ctx {int i_frame_offset; TYPE_3__ settings; TYPE_2__* meta; TYPE_4__** pp_history; scalar_t__ (* pf_render_ordered ) (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ;scalar_t__ (* pf_render_single_pic ) (TYPE_5__*,TYPE_4__*,TYPE_4__*) ;} ;
struct TYPE_33__ {scalar_t__ date; int i_nb_fields; int b_top_field_first; int b_progressive; struct TYPE_33__* p_next; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_30__ {int video; } ;
struct TYPE_34__ {TYPE_1__ fmt_out; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_31__ {scalar_t__ pi_date; int pi_nb_fields; int pb_top_field_first; } ;


 TYPE_4__* AllocPicture (TYPE_5__*) ;
 int CUSTOM_PTS ;
 int DEINTERLACE_DST_SIZE ;
 scalar_t__ GetFieldDuration (struct deinterlace_ctx*,int *,TYPE_4__*) ;
 int HISTORY_SIZE ;
 int METADATA_SIZE ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 int msg_Err (TYPE_5__*,char*,int,...) ;
 int picture_CopyProperties (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* picture_Hold (TYPE_4__*) ;
 int picture_Release (TYPE_4__*) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_4__*,TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ;
 scalar_t__ stub3 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ;
 scalar_t__ stub4 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int,int) ;

picture_t *DoDeinterlacing( filter_t *p_filter,
                            struct deinterlace_ctx *p_context, picture_t *p_pic )
{
    picture_t *p_dst[DEINTERLACE_DST_SIZE];
    int i_double_rate_alloc_end;



    int i_frame_offset;
    int i_meta_idx;

    bool b_top_field_first;


    p_dst[0] = AllocPicture( p_filter );
    if( p_dst[0] == ((void*)0) )
    {
        picture_Release( p_pic );
        return ((void*)0);
    }
    picture_CopyProperties( p_dst[0], p_pic );



    for( int i = 1; i < DEINTERLACE_DST_SIZE; ++i )
        p_dst[i] = ((void*)0);



    if( p_context->settings.b_use_frame_history )
    {

        picture_t *p_dup = picture_Hold( p_pic );


        if( p_context->pp_history[0] )
            picture_Release( p_context->pp_history[0] );
        for( int i = 1; i < HISTORY_SIZE; i++ )
            p_context->pp_history[i-1] = p_context->pp_history[i];
        p_context->pp_history[HISTORY_SIZE-1] = p_dup;
    }


    for( int i = 1; i < METADATA_SIZE; i++ )
        p_context->meta[i-1] = p_context->meta[i];

    p_context->meta[METADATA_SIZE-1].pi_date = p_pic->date;
    p_context->meta[METADATA_SIZE-1].pi_nb_fields = p_pic->i_nb_fields;
    p_context->meta[METADATA_SIZE-1].pb_top_field_first = p_pic->b_top_field_first;




    i_frame_offset = p_context->i_frame_offset;
    i_meta_idx = (METADATA_SIZE-1) - i_frame_offset;

    int i_nb_fields;


    if( i_frame_offset != CUSTOM_PTS )
    {

        b_top_field_first = p_context->meta[i_meta_idx].pb_top_field_first;
        i_nb_fields = p_context->meta[i_meta_idx].pi_nb_fields;
    }
    else
    {



        assert( !p_context->settings.b_double_rate );






        b_top_field_first = p_pic->b_top_field_first;

        i_nb_fields = p_pic->i_nb_fields;
    }



    i_double_rate_alloc_end = 0;




    if( p_context->settings.b_double_rate )
    {
        i_double_rate_alloc_end = i_nb_fields;
        if( i_nb_fields > DEINTERLACE_DST_SIZE )
        {





            msg_Err( p_filter, "Framerate doubler: output buffer too small; " "fields = %d, buffer size = %d. Dropping the " "remaining fields.",


                               i_nb_fields, DEINTERLACE_DST_SIZE );
            i_double_rate_alloc_end = DEINTERLACE_DST_SIZE;
        }


        for( int i = 1; i < i_double_rate_alloc_end ; ++i )
        {
            p_dst[i-1]->p_next =
            p_dst[i] = AllocPicture( p_filter );
            if( p_dst[i] )
            {
                picture_CopyProperties( p_dst[i], p_pic );
            }
            else
            {
                msg_Err( p_filter, "Framerate doubler: could not allocate " "output frame %d", i+1 );

                i_double_rate_alloc_end = i;

                break;

            }
        }
    }
    assert( p_context->settings.b_double_rate || p_dst[1] == ((void*)0) );
    assert( i_nb_fields > 2 || p_dst[2] == ((void*)0) );


    if ( !p_context->settings.b_double_rate )
    {
        if ( p_context->pf_render_single_pic( p_filter, p_dst[0], p_pic ) )
            goto drop;
    }
    else
    {


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
        assert(p_context->settings.b_use_frame_history);
        if( p_context->pp_history[0] && p_context->pp_history[1] )
        {

            p_context->i_frame_offset = CUSTOM_PTS;
        }
        else if( !p_context->pp_history[0] && !p_context->pp_history[1] )
        {
        }
        else
        {


            p_context->i_frame_offset = CUSTOM_PTS;
        }
    }



    assert( i_frame_offset <= METADATA_SIZE ||
            i_frame_offset == CUSTOM_PTS );
    if( i_frame_offset != CUSTOM_PTS )
    {
        vlc_tick_t i_base_pts = p_context->meta[i_meta_idx].pi_date;





        p_dst[0]->date = i_base_pts;

        if( p_context->settings.b_double_rate )
        {
            vlc_tick_t i_field_dur = GetFieldDuration( p_context, &p_filter->fmt_out.video, p_pic );

            for( int i = 1; i < i_double_rate_alloc_end; ++i )
            {


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
            p_dst[i]->b_progressive = 1;
            p_dst[i]->i_nb_fields = 2;
        }
    }

    picture_Release( p_pic );
    return p_dst[0];

drop:
    picture_Release( p_dst[0] );
    for( int i = 1; i < DEINTERLACE_DST_SIZE; ++i )
    {
        if( p_dst[i] )
            picture_Release( p_dst[i] );
    }

    picture_Release( p_pic );
    return ((void*)0);



}
