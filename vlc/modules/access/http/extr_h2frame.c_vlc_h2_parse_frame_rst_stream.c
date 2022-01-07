
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint_fast32_t ;
struct vlc_h2_parser {TYPE_1__* cbs; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* stream_reset ) (void*,scalar_t__) ;} ;


 scalar_t__ GetDWBE (int ) ;
 int VLC_H2_FRAME_SIZE_ERROR ;
 int VLC_H2_PROTOCOL_ERROR ;
 int free (struct vlc_h2_frame*) ;
 int stub1 (void*,scalar_t__) ;
 int vlc_h2_frame_payload (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;
 void* vlc_h2_stream_lookup (struct vlc_h2_parser*,scalar_t__) ;

__attribute__((used)) static int vlc_h2_parse_frame_rst_stream(struct vlc_h2_parser *p,
                                         struct vlc_h2_frame *f, size_t len,
                                         uint_fast32_t id)
{
    if (id == 0)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
    }

    if (len != 4)
    {
        free(f);
        return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
    }

    void *s = vlc_h2_stream_lookup(p, id);
    uint_fast32_t code = GetDWBE(vlc_h2_frame_payload(f));

    free(f);

    if (s == ((void*)0))
        return 0;
    return p->cbs->stream_reset(s, code);
}
