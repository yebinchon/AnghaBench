
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint_fast32_t ;
typedef int uint8_t ;
struct vlc_h2_parser {int opaque; TYPE_1__* cbs; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* settings_done ) (int ) ;int (* setting ) (int ,int ,int ) ;} ;


 int GetDWBE (int const*) ;
 int GetWBE (int const*) ;
 int VLC_H2_FRAME_SIZE_ERROR ;
 size_t VLC_H2_MAX_FRAME ;
 int VLC_H2_PROTOCOL_ERROR ;
 int VLC_H2_SETTINGS_ACK ;
 int free (struct vlc_h2_frame*) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ) ;
 int vlc_h2_frame_flags (struct vlc_h2_frame*) ;
 int * vlc_h2_frame_payload (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;

__attribute__((used)) static int vlc_h2_parse_frame_settings(struct vlc_h2_parser *p,
                                       struct vlc_h2_frame *f, size_t len,
                                       uint_fast32_t id)
{
    const uint8_t *ptr = vlc_h2_frame_payload(f);

    if (id != 0)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len % 6 || len > VLC_H2_MAX_FRAME)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    if (vlc_h2_frame_flags(f) & VLC_H2_SETTINGS_ACK)
    {
        free(f);
        if (len != 0)
            return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);

        return 0;
    }

    for (const uint8_t *end = ptr + len; ptr < end; ptr += 6)
        p->cbs->setting(p->opaque, GetWBE(ptr), GetDWBE(ptr + 2));

    free(f);
    return p->cbs->settings_done(p->opaque);
}
