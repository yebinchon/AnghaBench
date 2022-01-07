
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int * psz_encoding; } ;
struct TYPE_7__ {int i_codec; int i_cat; TYPE_1__ subs; } ;
struct TYPE_6__ {int force; } ;
struct TYPE_8__ {TYPE_3__ fmt_out; int pf_encode_sub; int * p_sys; TYPE_2__ obj; } ;
typedef TYPE_4__ encoder_t ;


 int Encode ;
 int SPU_ES ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*) ;
 int strcasecmp (int *,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t *)p_this;

    switch( p_enc->fmt_out.i_codec )
    {
        case 128:
            if( ( p_enc->fmt_out.subs.psz_encoding != ((void*)0) )
             && strcasecmp( p_enc->fmt_out.subs.psz_encoding, "utf8" )
             && strcasecmp( p_enc->fmt_out.subs.psz_encoding, "UTF-8" ) )
            {
                msg_Err( p_this, "Only UTF-8 encoding supported" );
                return VLC_EGENERIC;
            }
        case 129:
            break;

        default:
            if( !p_enc->obj.force )
                return VLC_EGENERIC;

            p_enc->fmt_out.i_codec = 129;
    }

    p_enc->p_sys = ((void*)0);

    p_enc->pf_encode_sub = Encode;
    p_enc->fmt_out.i_cat = SPU_ES;
    return VLC_SUCCESS;
}
