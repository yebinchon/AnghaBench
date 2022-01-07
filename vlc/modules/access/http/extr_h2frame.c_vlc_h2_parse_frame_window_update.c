
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint_fast32_t ;
struct vlc_h2_parser {TYPE_1__* cbs; int opaque; } ;
struct vlc_h2_frame {int dummy; } ;
struct TYPE_2__ {int (* stream_window_update ) (void*,scalar_t__) ;int (* window_update ) (int ,scalar_t__) ;} ;


 int GetDWBE (int ) ;
 int VLC_H2_FRAME_SIZE_ERROR ;
 int VLC_H2_PROTOCOL_ERROR ;
 int free (struct vlc_h2_frame*) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (void*,scalar_t__) ;
 int vlc_h2_frame_payload (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;
 int vlc_h2_stream_error (struct vlc_h2_parser*,scalar_t__,int ) ;
 void* vlc_h2_stream_lookup (struct vlc_h2_parser*,scalar_t__) ;

__attribute__((used)) static int vlc_h2_parse_frame_window_update(struct vlc_h2_parser *p,
                                            struct vlc_h2_frame *f, size_t len,
                                            uint_fast32_t id)
{
    if (len != 4)
    {
        free(f);

        if (id == 0)
            return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
        return vlc_h2_stream_error(p, id, VLC_H2_FRAME_SIZE_ERROR);
    }

    uint_fast32_t credit = GetDWBE(vlc_h2_frame_payload(f)) & 0x7fffffffu;

    free(f);

    if (credit == 0)
    {
        if (id == 0)
            return vlc_h2_parse_error(p, VLC_H2_PROTOCOL_ERROR);
        return vlc_h2_stream_error(p, id, VLC_H2_PROTOCOL_ERROR);
    }

    if (id == 0)
        p->cbs->window_update(p->opaque, credit);
    else
    {
        void *s = vlc_h2_stream_lookup(p, id);

        if (s != ((void*)0))
            p->cbs->stream_window_update(s, credit);
    }
    return 0;
}
