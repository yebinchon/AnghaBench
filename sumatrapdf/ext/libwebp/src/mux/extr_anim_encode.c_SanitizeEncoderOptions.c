
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int verbose; int kmax; int kmin; scalar_t__ minimize_size; } ;
typedef TYPE_1__ WebPAnimEncoderOptions ;


 int DisableKeyframes (TYPE_1__* const) ;
 int MAX_CACHED_FRAMES ;
 int assert (int) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

__attribute__((used)) static void SanitizeEncoderOptions(WebPAnimEncoderOptions* const enc_options) {
  int print_warning = enc_options->verbose;

  if (enc_options->minimize_size) {
    DisableKeyframes(enc_options);
  }

  if (enc_options->kmax == 1) {
    enc_options->kmin = 0;
    enc_options->kmax = 0;
    return;
  } else if (enc_options->kmax <= 0) {
    DisableKeyframes(enc_options);
    print_warning = 0;
  }

  if (enc_options->kmin >= enc_options->kmax) {
    enc_options->kmin = enc_options->kmax - 1;
    if (print_warning) {
      fprintf(stderr, "WARNING: Setting kmin = %d, so that kmin < kmax.\n",
              enc_options->kmin);
    }
  } else {
    const int kmin_limit = enc_options->kmax / 2 + 1;
    if (enc_options->kmin < kmin_limit && kmin_limit < enc_options->kmax) {


      enc_options->kmin = kmin_limit;
      if (print_warning) {
        fprintf(stderr,
                "WARNING: Setting kmin = %d, so that kmin >= kmax / 2 + 1.\n",
                enc_options->kmin);
      }
    }
  }

  if (enc_options->kmax - enc_options->kmin > MAX_CACHED_FRAMES) {
    enc_options->kmin = enc_options->kmax - MAX_CACHED_FRAMES;
    if (print_warning) {
      fprintf(stderr,
              "WARNING: Setting kmin = %d, so that kmax - kmin <= %d.\n",
              enc_options->kmin, MAX_CACHED_FRAMES);
    }
  }
  assert(enc_options->kmin < enc_options->kmax);
}
