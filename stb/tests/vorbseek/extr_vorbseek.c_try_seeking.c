
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_vorbis ;


 int SAMPLES_TO_TEST ;
 int assert (int) ;
 int fprintf (int ,char*,unsigned int,...) ;
 scalar_t__ memcmp (short*,short*,int) ;
 int stb_vorbis_get_samples_short_interleaved (int *,int,short*,int) ;
 int stb_vorbis_seek (int *,unsigned int) ;
 int stderr ;

int try_seeking(stb_vorbis *v, unsigned int pos, short *output, unsigned int num_samples)
{
   int count;
   short samples[SAMPLES_TO_TEST*2];
   assert(pos <= num_samples);

   if (!stb_vorbis_seek(v, pos)) {
      fprintf(stderr, "Seek to %u returned error from stb_vorbis\n", pos);
      return 0;
   }

   count = stb_vorbis_get_samples_short_interleaved(v, 2, samples, SAMPLES_TO_TEST*2);

   if (count > (int) (num_samples - pos)) {
      fprintf(stderr, "Seek to %u allowed decoding %d samples when only %d should have been valid.\n",
            pos, count, (int) (num_samples - pos));
      return 0;
   }

   if (count < SAMPLES_TO_TEST && count < (int) (num_samples - pos)) {
      fprintf(stderr, "Seek to %u only decoded %d samples of %d attempted when at least %d should have been valid.\n",
         pos, count, SAMPLES_TO_TEST, num_samples - pos);
      return 0;
   }

   if (0 != memcmp(samples, output + pos*2, count*2)) {
      int k;
      for (k=0; k < SAMPLES_TO_TEST*2; ++k) {
         if (samples[k] != output[k]) {
            fprintf(stderr, "Seek to %u produced incorrect samples starting at sample %u (short #%d in buffer).\n",
                    pos, pos + (k/2), k);
            break;
         }
      }
      assert(k != SAMPLES_TO_TEST*2);
      return 0;
   }

   return 1;
}
