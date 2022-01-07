
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int BUFFER_SIZE ;
 int FASTDEF (int ) ;
 int FAST_SCALED_FLOAT_TO_INT (int ,float,int) ;
 int PLAYBACK_LEFT ;
 int PLAYBACK_RIGHT ;
 int** channel_position ;
 int check_endianness () ;
 int memset (float*,int ,int) ;
 int temp ;

__attribute__((used)) static void compute_stereo_samples(short *output, int num_c, float **data, int d_offset, int len)
{

   float buffer[32];
   int i,j,o,n = 32 >> 1;

   check_endianness();
   for (o = 0; o < len; o += 32 >> 1) {

      int o2 = o << 1;
      memset(buffer, 0, sizeof(buffer));
      if (o + n > len) n = len - o;
      for (j=0; j < num_c; ++j) {
         int m = channel_position[num_c][j] & (PLAYBACK_LEFT | PLAYBACK_RIGHT);
         if (m == (PLAYBACK_LEFT | PLAYBACK_RIGHT)) {
            for (i=0; i < n; ++i) {
               buffer[i*2+0] += data[j][d_offset+o+i];
               buffer[i*2+1] += data[j][d_offset+o+i];
            }
         } else if (m == PLAYBACK_LEFT) {
            for (i=0; i < n; ++i) {
               buffer[i*2+0] += data[j][d_offset+o+i];
            }
         } else if (m == PLAYBACK_RIGHT) {
            for (i=0; i < n; ++i) {
               buffer[i*2+1] += data[j][d_offset+o+i];
            }
         }
      }
      for (i=0; i < (n<<1); ++i) {
         FASTDEF(temp);
         int v = FAST_SCALED_FLOAT_TO_INT(temp,buffer[i],15);
         if ((unsigned int) (v + 32768) > 65535)
            v = v < 0 ? -32768 : 32767;
         output[o2+i] = v;
      }
   }
}
