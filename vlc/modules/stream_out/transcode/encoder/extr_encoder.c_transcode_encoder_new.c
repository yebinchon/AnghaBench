
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_13__ {int lock_out; TYPE_3__* p_encoder; int pp_pics; } ;
typedef TYPE_1__ transcode_encoder_t ;
struct TYPE_14__ {int i_cat; int i_group; int i_id; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_16__ {scalar_t__ psz_language; int i_group; int i_id; } ;
struct TYPE_15__ {TYPE_8__ fmt_out; TYPE_8__ fmt_in; int * p_module; } ;





 TYPE_1__* calloc (int,int) ;
 int es_format_Clean (TYPE_8__*) ;
 int es_format_Copy (TYPE_8__*,TYPE_2__ const*) ;
 int es_format_Init (TYPE_8__*,int ,int ) ;
 int free (TYPE_1__*) ;
 int picture_fifo_New () ;
 TYPE_3__* sout_EncoderCreate (int *) ;
 scalar_t__ strdup (scalar_t__) ;
 int vlc_mutex_init (int *) ;
 int vlc_object_delete (TYPE_3__*) ;

transcode_encoder_t * transcode_encoder_new( vlc_object_t *p_obj,
                                             const es_format_t *p_fmt )
{
    switch( p_fmt->i_cat )
    {
        case 128:
        case 130:
        case 129:
            break;
        default:
            return ((void*)0);
    }

    transcode_encoder_t *p_enc = calloc( 1, sizeof(*p_enc) );
    if( !p_enc )
        return ((void*)0);

    p_enc->p_encoder = sout_EncoderCreate( p_obj );
    if( !p_enc->p_encoder )
    {
        free( p_enc );
        return ((void*)0);
    }
    p_enc->p_encoder->p_module = ((void*)0);


    es_format_Init( &p_enc->p_encoder->fmt_in, p_fmt->i_cat, 0 );
    es_format_Copy( &p_enc->p_encoder->fmt_in, p_fmt );
    es_format_Init( &p_enc->p_encoder->fmt_out, p_fmt->i_cat, 0 );
    p_enc->p_encoder->fmt_out.i_id = p_fmt->i_id;
    p_enc->p_encoder->fmt_out.i_group = p_fmt->i_group;
    if( p_enc->p_encoder->fmt_in.psz_language )
        p_enc->p_encoder->fmt_out.psz_language = strdup( p_enc->p_encoder->fmt_in.psz_language );

    switch( p_fmt->i_cat )
    {
        case 128:
            p_enc->pp_pics = picture_fifo_New();
            if( !p_enc->pp_pics )
            {
                es_format_Clean( &p_enc->p_encoder->fmt_in );
                es_format_Clean( &p_enc->p_encoder->fmt_out );
                vlc_object_delete(p_enc->p_encoder);
                free( p_enc );
                return ((void*)0);
            }
            vlc_mutex_init( &p_enc->lock_out );
            break;
        default:
            break;
    }

    return p_enc;
}
