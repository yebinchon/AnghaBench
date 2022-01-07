
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ogg_packet ;
struct TYPE_8__ {scalar_t__ p_description; TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_9__ {TYPE_1__* p_header; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_10__ {int modeName; } ;
struct TYPE_7__ {size_t mode; scalar_t__ vbr; } ;
typedef TYPE_4__ SpeexMode ;


 size_t SPEEX_NB_MODES ;
 int VLC_UNUSED (int *) ;
 int _ (char*) ;
 scalar_t__ asprintf (char**,char*,int ,char*) ;
 int assert (int) ;
 int free (char*) ;
 TYPE_4__** speex_mode_list ;
 int vlc_meta_AddExtra (scalar_t__,int ,char*) ;
 scalar_t__ vlc_meta_New () ;

__attribute__((used)) static void ParseSpeexComments( decoder_t *p_dec, ogg_packet *p_oggpacket )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    const SpeexMode *p_mode;

    assert( p_sys->p_header->mode < SPEEX_NB_MODES );

    p_mode = speex_mode_list[p_sys->p_header->mode];
    assert( p_mode != ((void*)0) );

    if( !p_dec->p_description )
    {
        p_dec->p_description = vlc_meta_New();
        if( !p_dec->p_description )
            return;
    }


    char *psz_mode;
    if( asprintf( &psz_mode, "%s%s", p_mode->modeName, p_sys->p_header->vbr ? " VBR" : "" ) >= 0 )
    {
        vlc_meta_AddExtra( p_dec->p_description, _("Mode"), psz_mode );
        free( psz_mode );
    }


    VLC_UNUSED( p_oggpacket );
}
