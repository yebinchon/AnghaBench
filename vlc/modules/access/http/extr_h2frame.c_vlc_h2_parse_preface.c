
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
struct vlc_h2_parser {int parser; } ;
struct vlc_h2_frame {int dummy; } ;


 size_t VLC_H2_DEFAULT_MAX_FRAME ;
 scalar_t__ VLC_H2_FRAME_SETTINGS ;
 int VLC_H2_PROTOCOL_ERROR ;
 int VLC_H2_SETTINGS_ACK ;
 int free (struct vlc_h2_frame*) ;
 int vlc_h2_frame_flags (struct vlc_h2_frame*) ;
 scalar_t__ vlc_h2_frame_type (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;
 int vlc_h2_parse_frame_settings (struct vlc_h2_parser*,struct vlc_h2_frame*,size_t,int ) ;
 int vlc_h2_parse_generic ;

__attribute__((used)) static int vlc_h2_parse_preface(struct vlc_h2_parser *p,
                                struct vlc_h2_frame *f, size_t len,
                                uint_fast32_t id)
{

    if (len > VLC_H2_DEFAULT_MAX_FRAME

     || vlc_h2_frame_type(f) != VLC_H2_FRAME_SETTINGS

     || (vlc_h2_frame_flags(f) & VLC_H2_SETTINGS_ACK))
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
    }

    p->parser = vlc_h2_parse_generic;

    return vlc_h2_parse_frame_settings(p, f, len, id);
}
