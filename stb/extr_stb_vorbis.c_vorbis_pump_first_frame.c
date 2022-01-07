
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_vorbis ;


 int vorbis_decode_packet (int *,int*,int*,int*) ;
 int vorbis_finish_frame (int *,int,int,int) ;

__attribute__((used)) static int vorbis_pump_first_frame(stb_vorbis *f)
{
   int len, right, left, res;
   res = vorbis_decode_packet(f, &len, &left, &right);
   if (res)
      vorbis_finish_frame(f, len, left, right);
   return res;
}
