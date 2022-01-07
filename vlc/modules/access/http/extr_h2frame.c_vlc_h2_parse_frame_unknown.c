
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_fast32_t ;
struct vlc_h2_parser {int dummy; } ;
struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_FRAME_SIZE_ERROR ;
 size_t VLC_H2_MAX_FRAME ;
 int free (struct vlc_h2_frame*) ;
 int vlc_h2_parse_error (struct vlc_h2_parser*,int ) ;
 int vlc_h2_stream_error (struct vlc_h2_parser*,scalar_t__,int ) ;

__attribute__((used)) static int vlc_h2_parse_frame_unknown(struct vlc_h2_parser *p,
                                      struct vlc_h2_frame *f, size_t len,
                                      uint_fast32_t id)
{
    free(f);

    if (len > VLC_H2_MAX_FRAME)
    {
        if (id == 0)
            return vlc_h2_parse_error(p, VLC_H2_FRAME_SIZE_ERROR);
        return vlc_h2_stream_error(p, id, VLC_H2_FRAME_SIZE_ERROR);
    }


    return 0;
}
