
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode_config; } ;
typedef TYPE_1__ vorb ;


 int vorbis_decode_initial (TYPE_1__*,int*,int*,int*,int*,int*) ;
 int vorbis_decode_packet_rest (TYPE_1__*,int*,scalar_t__,int,int,int,int,int*) ;

__attribute__((used)) static int vorbis_decode_packet(vorb *f, int *len, int *p_left, int *p_right)
{
   int mode, left_end, right_end;
   if (!vorbis_decode_initial(f, p_left, &left_end, p_right, &right_end, &mode)) return 0;
   return vorbis_decode_packet_rest(f, len, f->mode_config + mode, *p_left, left_end, *p_right, right_end, p_left);
}
