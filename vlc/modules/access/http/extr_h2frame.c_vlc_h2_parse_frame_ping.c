
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint_fast32_t ;
typedef int uint64_t ;
struct vlc_h2_parser {int opaque; TYPE_1__* cbs; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* ping ) (int ,int ) ;} ;


 int VLC_H2_FRAME_SIZE_ERROR ;
 int VLC_H2_PING_ACK ;
 int VLC_H2_PROTOCOL_ERROR ;
 int free (struct vlc_h2_frame*) ;
 int memcpy (int *,int ,int) ;
 int stub1 (int ,int ) ;
 int vlc_h2_frame_flags (struct vlc_h2_frame*) ;
 int vlc_h2_frame_payload (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;

__attribute__((used)) static int vlc_h2_parse_frame_ping(struct vlc_h2_parser *p,
                                   struct vlc_h2_frame *f, size_t len,
                                   uint_fast32_t id)
{
    uint64_t opaque;

    if (id != 0)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len != 8)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    if (vlc_h2_frame_flags(f) & VLC_H2_PING_ACK)
    {
        free(f);
        return 0;
    }

    memcpy(&opaque, vlc_h2_frame_payload(f), 8);
    free(f);

    return p->cbs->ping(p->opaque, opaque);
}
