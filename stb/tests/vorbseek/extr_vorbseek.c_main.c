
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc_buffer_length_in_bytes; int alloc_buffer; } ;
typedef TYPE_1__ stb_vorbis_alloc ;
typedef int stb_vorbis ;


 int fprintf (int ,char*,...) ;
 int free (short*) ;
 int malloc (int) ;
 int printf (char*,unsigned int,unsigned int,...) ;
 int stb_vorbis_close (int *) ;
 unsigned int stb_vorbis_decode_filename (char*,int*,int*,short**) ;
 int * stb_vorbis_open_filename (char*,int*,TYPE_1__*) ;
 int stderr ;
 unsigned int* test_count ;
 unsigned int* test_spacing ;
 scalar_t__ try_seeking (int *,unsigned int,short*,unsigned int) ;

int main(int argc, char **argv)
{
   int num_chan, samprate;
   int i, j, test, phase;
   short *output;

   if (argc == 1) {
      fprintf(stderr, "Usage: vorbseek {vorbisfile} [{vorbisfile]*]\n");
      fprintf(stderr, "Tests various seek offsets to make sure they're sample exact.\n");
      return 0;
   }
   for (j=1; j < argc; ++j) {
      unsigned int successes=0, attempts = 0;
      unsigned int num_samples = stb_vorbis_decode_filename(argv[j], &num_chan, &samprate, &output);

      break;

      if (num_samples == 0xffffffff) {
         fprintf(stderr, "Error: couldn't open file or not vorbis file: %s\n", argv[j]);
         goto fail;
      }

      if (num_chan != 2) {
         fprintf(stderr, "vorbseek testing only works with files with 2 channels, %s has %d\n", argv[j], num_chan);
         goto fail;
      }

      for (test=0; test < 5; ++test) {
         int error;
         stb_vorbis *v = stb_vorbis_open_filename(argv[j], &error, ((void*)0));
         if (v == ((void*)0)) {
            fprintf(stderr, "Couldn't re-open %s for test #%d\n", argv[j], test);
            goto fail;
         }
         for (phase=0; phase < 3; ++phase) {
            unsigned int base = phase == 0 ? 0 : phase == 1 ? num_samples - test_count[test]*test_spacing[test] : num_samples/3;
            for (i=0; i < test_count[test]; ++i) {
               unsigned int pos = base + i*test_spacing[test];
               if (pos > num_samples)
                  continue;
               successes += try_seeking(v, pos, output, num_samples);
               attempts += 1;
            }
         }
         stb_vorbis_close(v);
      }
      printf("%d of %d seeks failed in %s (%d samples)\n", attempts-successes, attempts, argv[j], num_samples);
      free(output);
   }
   return 0;
  fail:
   return 1;
}
